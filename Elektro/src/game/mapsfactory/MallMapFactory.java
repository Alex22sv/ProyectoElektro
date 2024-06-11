package game.mapsfactory;

import game.mapsfactory.maps.MallMap;
import game.mapsfactory.maps.Map;
/**
 * The factory to create mall maps.
 * @see MapFactory
 */
public class MallMapFactory extends MapFactory {
    /**
     * Create the mall map.
     * @return the new mall map.
     */
    @Override
    public Map createMap() {
        return new MallMap();
    }
}
