/*
* Exemple of the minimum code to make a working authentification
*/

static function main() {

    Assets.build();

    var beluga = Beluga.getInstance();

    Dispatch.run(beluga.getDispatchUri(), Web.getParams(), beluga.api);

    Sys.print(beluga.getModuleInstance(Account).widgets.loginForm.render());

    beluga.cleanup();

}
