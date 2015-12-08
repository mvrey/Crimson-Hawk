package 
{
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.text.TextField;
	/**
	 * ...
	 * @author Marcos Vazquez
	 */
	public class ShopButton extends SimpleButton {
		
		private var normal:Sprite = new shop_button();
		private var hover:Sprite = new shop_button_hover();
		private var clicked:Sprite = new shop_button_click();
		private var locked:Sprite = new shop_button_locked();
		
		public var img_:Sprite;
		public var name_:String;
		public var value_:Number;
		public var cost_:uint;
		public var cost_increment_:Number;
		
		public var line1_txt_:TextField;
		public var line2_txt_:TextField;
		
		
		public function ShopButton(x:int, y:int, img:Sprite=null, name:String=null, value:Number=0, cost:int=0, increment:Number=0) {
			
			super(normal, hover, clicked, normal);
			
			this.x = x;
			this.y = y;
			this.scaleX = 0.7;
			this.scaleY = 0.7;
			this.enabled = true;
			Misc.getStage().addChild(this);
			
			if (img && name && cost) {
				//Image
				img_ = img;
				img_.scaleX = 0.5;
				img_.scaleY = 0.5;
				img_.x = this.x + 40;
				img_.y = this.y + 40;
				img.mouseEnabled = false;
				Misc.getStage().addChild(this.img_);
				//Line1 (name+value)
				this.name_ = name;
				this.value_ = value;
				this.line1_txt_ = Misc.getTextField(name_+"  "+value_, this.x-60, this.y + 110, 17, 0xFFFFFF);
				this.line1_txt_.mouseEnabled = false;
				Misc.getStage().addChild(line1_txt_);
				//Line2 (cost)
				this.cost_ = cost;
				this.line2_txt_ = Misc.getTextField("$ " + cost_, this.x - 65, this.y + 130, 17, 0xDDDDDD);
				this.line2_txt_.mouseEnabled = false;
				Misc.getStage().addChild(line2_txt_);
				//increment
				this.cost_increment_ = increment;
			} else {
				this.downState = locked;
				this.upState = locked;
				this.overState = locked;
				this.hitTestState = locked;
			}
		}
		
	}

}