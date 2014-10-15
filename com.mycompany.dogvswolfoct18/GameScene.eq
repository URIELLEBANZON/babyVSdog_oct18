
/*
 * GameScene
 * Created by Eqela Studio 2.0b7.4
 */

public class GameScene : SEScene
{
        public static SESprite cafe;
        public static int px;
        public static int py;
        int a = 0;


        public void initialize(SEResourceCache rsc) {
                base.initialize(rsc);

                var w = get_scene_width();
				var h = get_scene_height();
				
                add_entity(SESpriteEntity.for_color(Color.instance("white"), w, h));
                rsc.prepare_image("c","cafe",w,h);

            	cafe = add_sprite_for_image(SEImage.for_resource("c"));
                cafe.move(0,0);

                add_entity(new PlayerEntity());
				add_entity(new MonsterEntity());
                for(a; a<Math.random(20,100);a ++){
                        add_entity(new MonsterEntity());
                        }
        }
        public void on_pointer_move(SEPointerInfo pi) {
                px = pi.get_x();
                py = pi.get_y();
        }

        public void cleanup() {
                base.cleanup();
        }
}