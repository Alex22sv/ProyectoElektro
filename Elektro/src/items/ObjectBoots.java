package items;

import game.GamePanel;
import game.UtilityTool;

import javax.imageio.ImageIO;
import java.io.IOException;

public class ObjectBoots extends SuperObject{
    private GamePanel gamePanel;
    public ObjectBoots(GamePanel gamePanel){
        this.gamePanel = gamePanel;
        name = "Boots";
        try{
            image = ImageIO.read(getClass().getResourceAsStream("/objects/boots.png"));
            UtilityTool.scaleImage(image, gamePanel.tileSize, gamePanel.tileSize);
        } catch (IOException e){
            e.printStackTrace();
        }
    }
}
