var MyClass = (function () {
    MyClass.$inject = ["$scope"];
    function MyClass($scope) {
        "ngInject";
        this.$scope = $scope;
        this.log();
    }
    MyClass.prototype.log = function () {
        console.log(this.$scope);
    };
    return MyClass;
}());

//# sourceMappingURL=foo.annotated.js.map
