package th.co.tomato.samples
{
	import flashx.textLayout.events.StatusChangeEvent;
	
	import mx.collections.ArrayCollection;
	
	import th.co.tomato.model.StatusModel;

	public class StatusService
	{
		public function getStatus():ArrayCollection {
			var aC:ArrayCollection = new ArrayCollection();
			var o:StatusModel = new StatusModel();
			o.id = 'A';
			o.label = 'Active';
			aC.addItem(o);
			o = new StatusModel();
			o.id = 'I';
			o.label = 'InActive';
			aC.addItem(o);
			return aC;			
		}
		
		public function getStatusAll():ArrayCollection {
			var aC:ArrayCollection = new ArrayCollection();
			var o:StatusModel = new StatusModel();
			o.id = null;
			o.label = 'All';
			aC.addItem(o);
			
			o = new StatusModel();
			o.id = 'A';
			o.label = 'Active';
			aC.addItem(o);
			
			o = new StatusModel();
			o.id = 'I';
			o.label = 'InActive';
			aC.addItem(o);
			
			return aC;
		}
	}
}