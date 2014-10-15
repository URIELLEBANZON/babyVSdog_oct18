
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
        public SESprite baby;

        public void initialize(SEResourceCache rsc) {
                base.initialize(rsc);
                
				var w = get_scene_width();
				var h = get_scene_height();
                
				rsc.prepare_image("mybaby","baby",w*0.1,h*0.1);
				
                baby = add_sprite_for_image(SEImage.for_resource("mybaby"));
                var wp = baby.get_width();
				var hp = baby.get_height();
                baby.move(w*0.5-wp,h*0.5-hp);
        }

        public void tick (TimeVal time, double delta) {
                baby.move(GameScene.px,GameScene.py);
        }

        public void cleanup() {
                base.cleanup();
        }
}

