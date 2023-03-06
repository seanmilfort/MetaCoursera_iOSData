import Foundation
import CoreData


extension Dish {

    static func createDishesFrom(menuItems:[MenuItem],
                                 _ context:NSManagedObjectContext) {
        
        for item in menuItems {
            
            guard let _ = exists(name: item.title, context) else {
                continue
            }
            
            let dish = Dish (context: context)
            dish.name = item.title
            dish.price = Float(item.price) ?? 0
        }
        
    }
    
}
