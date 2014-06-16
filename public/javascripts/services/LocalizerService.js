CMS.factory('$localizer', ['$rootScope', function($rootScope){
    
    
    $rootScope.langId = "en";
    
    var en = {
        LOGIN : "Login",
        USERNAME : "Username",
        PASSWORD: "Password",
        ABOUT: "About",
        HOME: "Home",
        BLOG: "Blog",
        TERMS: "Terms",
        PROFILE: "Profile",
        CONTACT: "Contact",
        PRODUCTS: "Products",
        CART: "Cart",
        ADMINISTRATION: "Administration",
        MY_ACCOUNT: "My Account",
        REGISTER: "Register",
        CHANGE_PASSWORD: "Change Password",
        LOGOUT: "Logout",
        MESSAGE_101: "Invalid client",
        MESSAGE_102: "Please log in",
        MESSAGE_103: "Wrong username or password",
        MESSAGE_104: "Wrong username or password",
        MESSAGE_105: "Wrong username or password"
    };
    
    var gr = {
        LOGIN: "Σύνδεση",
        USERNAME: "Όνομα χρήστη",
        PASSWORD: "Κωδικός",
        ABOUT: "About",
        HOME: "Αρχική",
        BLOG: "Blog",
        TERMS: "Όροι Χρήσης",
        PROFILE: "Προφίλ",
        PRODUCTS: "Προϊόντα",
        CART: "Καλάθι",
        CONTACT: "Επικοινωνία",
        ADMINISTRATION: "Διαχείρηση",
        MY_ACCOUNT: "Ο λογαριασμός μου",
        REGISTER: "Εγγραφή",
        CHANGE_PASSWORD: "Αλλαγή κωδικού πρόσβασης",
        LOGOUT: "Αποσύνδεση",
        MESSAGE_101: "Invalid client",
        MESSAGE_102: "Παρακαλώ συνδεθείτε",
        MESSAGE_103: "Λάθος username ή password",
        MESSAGE_104: "Λάθος username ή password",
        MESSAGE_105: "Λάθος username ή password"
    };
    
    
    
    return {
        getError: function(errorNum){
            return this[$rootScope.langId]["MESSAGE_" + errorNum];
        },
        get: function(val){
            return this[$rootScope.langId][val];
        },
        "en": en,
        "gr": gr
    };
    
}]);


