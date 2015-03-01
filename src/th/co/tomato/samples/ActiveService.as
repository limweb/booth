package th.co.tomato.samples
{
	import mx.collections.ArrayCollection;
	
	import th.co.tomato.model.ActiveModel;

	public class ActiveService
	{
		
		public function genActive():ArrayCollection {
			var aC:ArrayCollection = new ArrayCollection();
			var o:ActiveModel = new ActiveModel();
			o.typeid = 'A';
			o.label = 'Active';
			aC.addItem(o);
			o = new ActiveModel();
			o.typeid = 'I';
			o.label = 'InActive';
			aC.addItem(o);
			return aC;			
		}
		
		public function getActiveAll():ArrayCollection {
			var aC:ArrayCollection = new ArrayCollection();
			var o:ActiveModel = new ActiveModel();
			o.typeid = null;
			o.label = 'All';
			aC.addItem(o);

			o = new ActiveModel();
			o.typeid = 'A';
			o.label = 'Active';
			aC.addItem(o);

			o = new ActiveModel();
			o.typeid = 'I';
			o.label = 'InActive';
			aC.addItem(o);
			
			return aC;
		}
		
	}

}