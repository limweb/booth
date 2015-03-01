package th.co.tomato.samples.data {
	public class DummyData {
		
		public static function getDummyHierarchy():MyObj {
			var root:MyObj = new MyObj('root');
			
			var foo:MyObj = new MyObj('foo','a');
			var bar:MyObj = new MyObj('bar','b');
			var baz:MyObj = new MyObj('baz','c');
			var bolts:MyObj = new MyObj('bolts','d');
			
			var fred:MyObj = new MyObj('fred','e');
			var fade:MyObj = new MyObj('fade','f');
			var filthy:MyObj = new MyObj('filthy','g');
			
			var box:MyObj = new MyObj('box','h');
			var bushel:MyObj = new MyObj('bushel','i');
			var blossom:MyObj = new MyObj('blossom','j');
			var brotwurst:MyObj = new MyObj('brotwurst','k');
			var bundle:MyObj = new MyObj('bundle','l');
			var bombshell:MyObj = new MyObj('bombshell','m');
			var bloodletting:MyObj = new MyObj('bloodletting','n');
			
			var red:MyObj = new MyObj('red','o');
			var green:MyObj = new MyObj('green','p');
			var blue:MyObj = new MyObj('blue','q');
			
			var lily:MyObj = new MyObj('lily','r');
			var lilac:MyObj = new MyObj('lilac','s');
			var pansy:MyObj = new MyObj('pansy','t');
			
			fred.children = [red,green,blue];
			foo.children = [fred,fade,filthy];
			blossom.children = [lily,lilac,pansy];
			bar.children = [box,bushel,blossom,brotwurst,bundle,bombshell,bloodletting];
			root.children = [foo,bar,baz,bolts];
			
			return root;
		}
	}
}