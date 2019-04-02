
import UIKit

private class UntitledPassthroughView: UIView {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in subviews as [UIView] {
            if subview.point(inside: convert(point, to: subview), with: event) { return true }
        }
        return false
    }
}

@IBDesignable
class UntitledAddedtoIt : UIView, CAAnimationDelegate {
    
    
    var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
    var viewsByName: [String : UIView]!
    
    // - MARK: Life Cycle
    
    convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 409, height: 71))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupHierarchy()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupHierarchy()
    }
    
    // - MARK: Scaling
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let scalingView = self.viewsByName["__scaling__"] {
            var xScale = self.bounds.size.width / scalingView.bounds.size.width
            var yScale = self.bounds.size.height / scalingView.bounds.size.height
            switch contentMode {
            case .scaleToFill:
                break
            case .scaleAspectFill:
                let scale = max(xScale, yScale)
                xScale = scale
                yScale = scale
            default:
                let scale = min(xScale, yScale)
                xScale = scale
                yScale = scale
            }
            scalingView.transform = CGAffineTransform(scaleX: xScale, y: yScale)
            scalingView.center = CGPoint(x:self.bounds.midX, y:self.bounds.midY)
        }
    }
    
    // - MARK: Setup
    
    func setupHierarchy() {
        var viewsByName: [String : UIView] = [:]
        let bundle = Bundle(for:type(of: self))
        let __scaling__ = UIView()
        __scaling__.bounds = CGRect(x:0, y:0, width:409, height:71)
        __scaling__.center = CGPoint(x:205.0, y:35.5)
        self.addSubview(__scaling__)
        viewsByName["__scaling__"] = __scaling__
        
        let reunited__root = UntitledPassthroughView()
        let reunited__xScale = UntitledPassthroughView()
        let reunited__yScale = UntitledPassthroughView()
        let reunited = UIImageView()
        let imgGroup = UIImage(named:"Group.png", in: bundle, compatibleWith: nil)
        if imgGroup == nil {
            print("** Warning: Could not create image from 'Group.png'")
        }
        reunited.image = imgGroup
        reunited.contentMode = .center
        reunited.bounds = CGRect(x:0, y:0, width:375.0, height:60.0)
        reunited__root.layer.position = CGPoint(x:204.982, y:35.521)
        reunited__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
        reunited__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
        reunited__root.transform = CGAffineTransform(rotationAngle: 0.000)
        __scaling__.addSubview(reunited__root)
        reunited__root.addSubview(reunited__xScale)
        reunited__xScale.addSubview(reunited__yScale)
        reunited__yScale.addSubview(reunited)
        __scaling__.addSubview(reunited__root)
        viewsByName["Reunited__root"] = reunited__root
        viewsByName["Reunited__xScale"] = reunited__xScale
        viewsByName["Reunited__yScale"] = reunited__yScale
        viewsByName["Reunited"] = reunited
        
        let reunitedMask__root = UntitledPassthroughView()
        let reunitedMask__xScale = UntitledPassthroughView()
        let reunitedMask__yScale = UntitledPassthroughView()
        let reunitedMask = UIImageView()
        let imgCircle = UIImage(named:"circle.png", in: bundle, compatibleWith: nil)
        if imgCircle == nil {
            print("** Warning: Could not create image from 'circle.png'")
        }
        reunitedMask.image = imgCircle
        reunitedMask.contentMode = .center
        reunitedMask.bounds = CGRect(x:0, y:0, width:208.0, height:208.0)
        reunitedMask__root.layer.position = CGPoint(x:187.500, y:30.000)
        reunitedMask__xScale.transform = CGAffineTransform(scaleX: 0.08, y: 1.00)
        reunitedMask__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.03)
        reunitedMask__root.transform = CGAffineTransform(rotationAngle: 0.000)
        reunited.addSubview(reunitedMask__root)
        reunitedMask__root.addSubview(reunitedMask__xScale)
        reunitedMask__xScale.addSubview(reunitedMask__yScale)
        reunitedMask__yScale.addSubview(reunitedMask)
        reunited.mask = reunitedMask__root
        viewsByName["Reunited_mask__root"] = reunitedMask__root
        viewsByName["Reunited_mask__xScale"] = reunitedMask__xScale
        viewsByName["Reunited_mask__yScale"] = reunitedMask__yScale
        viewsByName["Reunited_mask"] = reunitedMask
        
        self.viewsByName = viewsByName
    }
    
    // - MARK: Untitled Animation
    
    func addUntitledAnimation() {
        addUntitledAnimation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
    }
    
    func addUntitledAnimation(completion: ((Bool) -> Void)?) {
        addUntitledAnimation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
    }
    
    func addUntitledAnimation(removedOnCompletion: Bool) {
        addUntitledAnimation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
    }
    
    func addUntitledAnimation(removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
        addUntitledAnimation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
    }
    
    func addUntitledAnimation(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
        let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        if let complete = completion {
            let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
            representativeAnimation.duration = 0.300
            representativeAnimation.delegate = self
            self.layer.add(representativeAnimation, forKey: "UntitledAnimation")
            self.animationCompletions[layer.animation(forKey: "UntitledAnimation")!] = complete
        }
        
        let reunitedMaskScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
        reunitedMaskScaleXAnimation.duration = 0.300
        reunitedMaskScaleXAnimation.values = [0.078, 3.080] as [Float]
        reunitedMaskScaleXAnimation.keyTimes = [0.000, 1.000] as [NSNumber]
        reunitedMaskScaleXAnimation.timingFunctions = [linearTiming]
        reunitedMaskScaleXAnimation.beginTime = beginTime
        reunitedMaskScaleXAnimation.fillMode = fillMode
        reunitedMaskScaleXAnimation.isRemovedOnCompletion = removedOnCompletion
        self.viewsByName["Reunited_mask__xScale"]?.layer.add(reunitedMaskScaleXAnimation, forKey:"Untitled Animation_ScaleX")
        
        let reunitedMaskScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
        reunitedMaskScaleYAnimation.duration = 0.300
        reunitedMaskScaleYAnimation.values = [0.029, 1.172] as [Float]
        reunitedMaskScaleYAnimation.keyTimes = [0.000, 1.000] as [NSNumber]
        reunitedMaskScaleYAnimation.timingFunctions = [linearTiming]
        reunitedMaskScaleYAnimation.beginTime = beginTime
        reunitedMaskScaleYAnimation.fillMode = fillMode
        reunitedMaskScaleYAnimation.isRemovedOnCompletion = removedOnCompletion
        self.viewsByName["Reunited_mask__yScale"]?.layer.add(reunitedMaskScaleYAnimation, forKey:"Untitled Animation_ScaleY")
        
        let reunitedMaskTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        reunitedMaskTranslationXAnimation.duration = 0.300
        reunitedMaskTranslationXAnimation.values = [0.000, 0.000] as [Float]
        reunitedMaskTranslationXAnimation.keyTimes = [0.000, 1.000] as [NSNumber]
        reunitedMaskTranslationXAnimation.timingFunctions = [linearTiming]
        reunitedMaskTranslationXAnimation.beginTime = beginTime
        reunitedMaskTranslationXAnimation.fillMode = fillMode
        reunitedMaskTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
        self.viewsByName["Reunited_mask__root"]?.layer.add(reunitedMaskTranslationXAnimation, forKey:"Untitled Animation_TranslationX")
        
        let reunitedMaskTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
        reunitedMaskTranslationYAnimation.duration = 0.300
        reunitedMaskTranslationYAnimation.values = [0.000, 0.000] as [Float]
        reunitedMaskTranslationYAnimation.keyTimes = [0.000, 1.000] as [NSNumber]
        reunitedMaskTranslationYAnimation.timingFunctions = [linearTiming]
        reunitedMaskTranslationYAnimation.repeatCount = HUGE
        reunitedMaskTranslationYAnimation.beginTime = beginTime
        reunitedMaskTranslationYAnimation.fillMode = fillMode
        reunitedMaskTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
        self.viewsByName["Reunited_mask__root"]?.layer.add(reunitedMaskTranslationYAnimation, forKey:"Untitled Animation_TranslationY")
    }
    
    func removeUntitledAnimation() {
        self.layer.removeAnimation(forKey: "UntitledAnimation")
        self.viewsByName["Reunited_mask__xScale"]?.layer.removeAnimation(forKey: "Untitled Animation_ScaleX")
        self.viewsByName["Reunited_mask__yScale"]?.layer.removeAnimation(forKey: "Untitled Animation_ScaleY")
        self.viewsByName["Reunited_mask__root"]?.layer.removeAnimation(forKey: "Untitled Animation_TranslationX")
        self.viewsByName["Reunited_mask__root"]?.layer.removeAnimation(forKey: "Untitled Animation_TranslationY")
    }
    
    // MARK: CAAnimationDelegate
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        if let completion = self.animationCompletions[anim] {
            self.animationCompletions.removeValue(forKey: anim)
            completion(flag)
        }
    }
    
    func removeAllAnimations() {
        for subview in viewsByName.values {
            subview.layer.removeAllAnimations()
        }
        self.layer.removeAnimation(forKey: "UntitledAnimation")
    }
}
