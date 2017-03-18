
class MyClass {
    constructor(private $scope) {
        "ngInject";
        this.log();
    }

    private log() {
        console.log(this.$scope);
    }
}

