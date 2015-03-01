package th.co.tomato.samples.data {
	import mx.collections.ArrayList;
	import mx.utils.ArrayUtil;

	/**
	 * This class is used to flatten an incoming hierarchy of MyObj objects
	 * for display via List + ItemRenderer.
	 */
	public class MyObjFlattenedList extends ArrayList {
		
		//the root MyObj object
		private var _root:MyObj;
		
		//list of open nodes
		private var _openList:Array;
		
		//pre-computed depth map, so we can give each node the correct visual treatment
		private var _depthMap:Object;
		
		//optional filter-by-name filter
		private var _filter:String;

		public function MyObjFlattenedList(root:MyObj) {
			_root = root;
			_openList = [];
			_depthMap = {};
			_filter = null;
			computeDepthMap(_root, 0);
			reset();
		}
		
		public function reset(openList:Array = null):void {
			_openList = (openList == null ? [] : openList);
			var a:Array = [];
			addItemToList(_root, a);
			this.source = a;
		}
		
		private function addItemToList(obj:MyObj, a:Array):void {
			if (obj.children == null) return;
			
			var N:int = obj.children.length;
			for (var i:int = 0; i < N; i++) {
				var child:MyObj = obj.children[i] as MyObj;
				a.push(child);
				if (isItemOpen(child)) {
					addItemToList(child, a);
				}
			}
		}
		
		public function isItemOpen(obj:MyObj):Boolean {
			return (_openList.indexOf(obj.id) != -1);
		}
		
		public function openItem(obj:MyObj):void {
			_openList.push(obj.id);
			var a:Array = [];
			addItemToList(obj, a);
			
			var idx:int = this.getItemIndex(obj);
			while (a.length) {
				this.addItemAt(a.shift(), ++idx);
			}
		}
		
		public function closeItem(obj:MyObj):void {
			var idx:int = _openList.indexOf(obj.id);
			if (idx == -1) return;
			
			_openList.splice(idx, 1);
			
			var a:Array = [];
			addItemToList(obj, a);
			idx = this.getItemIndex(obj) + 1;
			while (a.length) {
				this.removeItemAt(idx);
				a.shift();
			}
		}
		
		/**
		 * When this class is initialized, we recursively compute a depth map
		 * for all objects in the tree.  This makes future depth lookups fast.
		 * Root node has depth of zero, its children have depth of 1, etc.
		 */
		private function computeDepthMap(obj:MyObj, depth:int):void {
			_depthMap[obj.id] = depth;
			if (obj.children == null) return;
			
			var N:int = obj.children.length;
			for (var i:int = 0; i < N; i++) {
				var child:MyObj = obj.children[i] as MyObj;
				computeDepthMap(child, depth + 1);
			}
		}
		
		public function getItemDepth(obj:MyObj):int {
			if (_filter != null) {
				return 0;
			} else if (_depthMap.hasOwnProperty(obj.id)) {
				return _depthMap[obj.id];
			} else {
				return 0;
			}
		}
		
		/**
		 * For a given filter text, create a "flattened" list of all matching items.
		 * There is no concept of "tree" when filter is active (aka depth = 0).
		 */
		public function filterByName(filter:String):void {
			if (filter == null || filter.length == 0) {
				_filter = null;
				reset(_openList);
				return;
			}
			
			_filter = filter.toLowerCase();
			var a:Array = [];
			addFilteredItemToList(_root, a);
			this.source = a;
		}
		
		private function addFilteredItemToList(obj:MyObj, a:Array):void {
			if (obj.children == null) return;
			
			var N:int = obj.children.length;
			for (var i:int = 0; i < N; i++) {
				var child:MyObj = obj.children[i] as MyObj;
				if (child.name.toLowerCase().indexOf(_filter) != -1)
					a.push(child);
				addFilteredItemToList(child, a);
			}
		}
		
		public function get isFiltered():Boolean {
			return (_filter != null && _filter.length > 0);
		}
	}
}
