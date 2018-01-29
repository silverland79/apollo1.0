"""Parameter Cache"""

import threading

class ParamCache(object):
    """
    Cache of values in the broadcast manager.
    """
    
    def __init__(self):
        self.lock = threading.Lock()
        self.d = {}
        self.dkeys = {}
        self.notifier = None

    def __setitem__(self, key, value):
        keys = []
        if key.endswith("/"):
            key = key[:-1]

        if isinstance(value["value"], dict):
            keys = [key + x[0] for x in self._find_params(value["value"], "/")]

        with self.lock:
            self.set_value(key, value)
            self.dkeys[key] = value["timestamp"]
            for k in keys:
                self.dkeys[k] = value["timestamp"]

    def __getitem__(self, key):
        with self.lock:
            return self.get_value(key)

    def time(self, key):
        """
        Get the timestamp of key.
        Return 0 if the parameter has not been set.

        @return: timestamp
        @rtype:  str
        """
        try:
            return self.dkeys[key]
        except KeyError:
            print "timestamp of key [" + key + "] is None."
            return str(0)

    def keys(self):
        """
        Get all parameters.

        @return: list of parameters
        @rtype: list
        """
        return self.dkeys.keys()

    def items(self):
        """
        Find leaf nodes in a dictionary.

        @return: list of leaf nodes with key/value pairs
        @rtype:  list
        """
        return self._find_params(self.d, "/")

    def _find_params(self, obj, prefix=""):
        params = []
        for key, item in obj.items():
            if isinstance(item, dict):
                params.extend(self._find_params(item, prefix + key + "/"))
            else:
                params.append((prefix + key, item))
        return params
        
    def delete(self, key):
        """
        """
        with self.lock:
            self.dkeys = dict([(k, v) for k, v in self.dkeys.items() if not k.startswith(key)])
            if key == "/":
                self.d.clear()
            else:
                obj, k = self._find_value(key, self.d, False)
                obj.pop(k)

    def set_value(self, key, value):
        """
        """
        if key == "/" and not isinstance(value["value"], dict):
            raise TypeError("invalid arguments: cannot set  \
                    root of parameter tree to non-dictionary")
        obj, k = self._find_value(key, self.d)
        obj[k] = value["value"]

    def get_value(self, key):
        """
        """
        if key == "/":
            return self.d
        else:
            obj, k =  self._find_value(key.split("/", 1)[1], self.d)
            return obj[k]

    def _find_value(self, key, obj, auto_create=True):
        keys = [k for k in key.split("/") if k]
        end = keys[-1]
        keys = keys[:-1]
        d = obj
        for k in keys:
            if k not in d:
                if auto_create:
                    d[k] = {}
                else:
                    raise KeyError
            else:
                if not isinstance(d[k], dict):
                    d[k] = {}
            d = d[k]
        return d, end

if __name__ == "__main__":
    pc = ParamCache() 
    pc["/a/b/c/d/e"] = {"value": 10, "timestamp": 12312}
    pc["/a/b/c/d/e"] = {"value": 11, "timestamp": 12311}
    pc["/a/b/c/d/f"] = {"value": 9, "timestamp": 9}
    pc["/a/b/c/d/f/g"] = {"value": 9, "timestamp": 9}
    #print pc["/a/b/c/d/e"]
    #print pc["/a/b/c/d"]
    #pc.delete("/a/b")
    #print pc["/a/b/c"]
    #pc.delete("/a/b/c/d/e")
    import json
    print json.dumps(pc.d)
    for k,v in pc.items():
        print k,v
        pass

    #print pc["/a/b/c/d/e"]

