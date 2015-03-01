/**
 * This is a generated sub-class of _UsersService.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package services.usersservice
{
	import th.co.tomato.main.MainConfig;

public class UsersService extends _Super_UsersService
{
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
        super.preInitializeService();
        // Initialization customization goes here
		endpoint = MainConfig.endpoint;
    }
               
}

}
