package vessels.ships 
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Marcos Vazquez
	 */
	public class Cargo extends Ship
	{
		
		public function Cargo() {
			
			var shipMC:MovieClip = new ship1();
			
			shipMC.x = 100;
			shipMC.y = Misc.getStage().stageHeight / 2;
			
			shipMC.graphics.curveTo(0, 200, 100, 300);
			
			super(3, shipMC, 5, 0);
		}
		
	}

}