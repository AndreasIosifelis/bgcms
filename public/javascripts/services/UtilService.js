MZ.factory("$util", [function() {

        return {
            hash: function(m, v) {
                return this.isEmpty(CryptoJS) ? "" : CryptoJS[m](v).toString();
            },
            isEmpty: function(v, aes) {
                return (v === null) || (v === undefined) || (!aes ? v === '' : false) || (this.isArray(v) && v.length === 0);
            },
            isArray: function(o) {
                return Object.prototype.toString.call(o) === "[object Array]";
            },
            isFunction: function(o) {
                return Object.prototype.toString.call(o) === "[object Function]";
            },
            isObject: function(o) {
                return Object.prototype.toString.call(o) === "[object Object]";
            }
        };

    }]);


