import Cocoa

class Card: NSObject
{
    var color: String
    var value: Int

    init (color: Color, value: Value)
    {
        self.color = color.rawValue
        self.value = value.hashValue
    }

    override var description: String {
       return "\(self.value) de \(self.color)"
   }

   override func isEqual(_ object: Any?) -> Bool {
        if let object = object as? Card
        {
            if object.color == self.color && object.value == self.value
            {
                return true
            }
            else
            {
                return false
            }
        }
        else
        {
            return false
        }
    }

    static func ==(lhs: Card, rhs: Card) -> Bool
    {
        return lhs.isEqual(rhs)
    }

    static func !=(lhs: Card, rhs: Card) -> Bool
    {
        return !lhs.isEqual(rhs)
    }
}
