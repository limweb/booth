package th.co.tomato.samples
{
	import mx.collections.ArrayCollection;
	import mx.controls.DateField;
	
	import th.co.tomato.model.Roles;
	import th.co.tomato.model.UserModel;

	public class UserService
	{

		public var endpoint:String = '';
		public function getUserByID(username:String, password:String):UserModel {
			var um:UserModel = new UserModel();
			if(username=='a' && password == 'a'){
				um.userid = 'a';
				um.roll = '1';
				um.name = 'user';
				um.comment = '';
				um.server_date = DateField.dateToString(new Date(),'YYYY-MM-DD');
				um.workdate = DateField.dateToString(new Date(),'YYYY-MM-DD');
				um.roles = new ArrayCollection();
				var ro:Roles = new Roles();
					ro.STATUS = 'A';
					ro.ROLEID = '1';
					ro.ROLECODE = 'admin';
					ro.modulname = 'AD';
					ro.functionname = 'LIST';
				um.roles.addItem(ro);
				return um;
			} else if(username=='admin' && password == 'admin'){
				um.userid = 'a';
				um.roll = '1';
				um.name = 'Administrator';
				um.comment = '';
				um.server_date = DateField.dateToString(new Date(),'YYYY-MM-DD');
				um.workdate = DateField.dateToString(new Date(),'YYYY-MM-DD');
				um.roles = new ArrayCollection();
				var ro:Roles = new Roles();
					ro.STATUS = 'A';
					ro.ROLEID = '1';
					ro.ROLECODE = 'admin';
					ro.modulname = 'AD';
					ro.functionname = 'LIST';
				um.roles.addItem(ro);
				return um;
			} else {
				return null;
			}
		
		}
		
	}
}