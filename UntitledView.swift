

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
class UntitledView : UIView, CAAnimationDelegate {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 183, height: 398))
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
		__scaling__.bounds = CGRect(x:0, y:0, width:183, height:398)
		__scaling__.center = CGPoint(x:91.7, y:199.2)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let teamKaliber__root = UntitledPassthroughView()
		let teamKaliber__xScale = UntitledPassthroughView()
		let teamKaliber__yScale = UntitledPassthroughView()
		let teamKaliber = UIImageView()
		let imgUntitledAnimation60 = UIImage(named:"Untitled Animation60.png", in: bundle, compatibleWith: nil)
		if imgUntitledAnimation60 == nil {
			print("** Warning: Could not create image from 'Untitled Animation60.png'")
		}
		teamKaliber.image = imgUntitledAnimation60
		teamKaliber.contentMode = .center
		teamKaliber.bounds = CGRect(x:0, y:0, width:278.0, height:486.0)
		teamKaliber__root.layer.position = CGPoint(x:91.679, y:199.232)
		teamKaliber__xScale.transform = CGAffineTransform(scaleX: 1.07, y: 1.00)
		teamKaliber__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.07)
		teamKaliber__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(teamKaliber__root)
		teamKaliber__root.addSubview(teamKaliber__xScale)
		teamKaliber__xScale.addSubview(teamKaliber__yScale)
		teamKaliber__yScale.addSubview(teamKaliber)
		__scaling__.addSubview(teamKaliber__root)
		viewsByName["teamKaliber__root"] = teamKaliber__root
		viewsByName["teamKaliber__xScale"] = teamKaliber__xScale
		viewsByName["teamKaliber__yScale"] = teamKaliber__yScale
		viewsByName["teamKaliber"] = teamKaliber

		let teamKaliberMask__root = UntitledPassthroughView()
		let teamKaliberMask__xScale = UntitledPassthroughView()
		let teamKaliberMask__yScale = UntitledPassthroughView()
		let teamKaliberMask = UIImageView()
		let imgGradient1 = UIImage(named:"gradient1.png", in: bundle, compatibleWith: nil)
		if imgGradient1 == nil {
			print("** Warning: Could not create image from 'gradient1.png'")
		}
		teamKaliberMask.image = imgGradient1
		teamKaliberMask.contentMode = .center
		teamKaliberMask.bounds = CGRect(x:0, y:0, width:185.0, height:111.0)
		teamKaliberMask__root.layer.position = CGPoint(x:139.000, y:83.229)
		teamKaliberMask__xScale.transform = CGAffineTransform(scaleX: 1.50, y: 1.00)
		teamKaliberMask__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.48)
		teamKaliberMask__root.transform = CGAffineTransform(rotationAngle: 0.000)
		teamKaliber.addSubview(teamKaliberMask__root)
		teamKaliberMask__root.addSubview(teamKaliberMask__xScale)
		teamKaliberMask__xScale.addSubview(teamKaliberMask__yScale)
		teamKaliberMask__yScale.addSubview(teamKaliberMask)
		teamKaliber.mask = teamKaliberMask__root
		viewsByName["teamKaliber_mask__root"] = teamKaliberMask__root
		viewsByName["teamKaliber_mask__xScale"] = teamKaliberMask__xScale
		viewsByName["teamKaliber_mask__yScale"] = teamKaliberMask__yScale
		viewsByName["teamKaliber_mask"] = teamKaliberMask

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
			representativeAnimation.duration = 5.000
			representativeAnimation.delegate = self
			self.layer.add(representativeAnimation, forKey: "UntitledAnimation")
			self.animationCompletions[layer.animation(forKey: "UntitledAnimation")!] = complete
		}

		let teamKaliberMaskScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		teamKaliberMaskScaleYAnimation.duration = 5.000
		teamKaliberMaskScaleYAnimation.values = [0.481, 4.750] as [Float]
		teamKaliberMaskScaleYAnimation.keyTimes = [0.000, 1.000] as [NSNumber]
		teamKaliberMaskScaleYAnimation.timingFunctions = [linearTiming]
		teamKaliberMaskScaleYAnimation.beginTime = beginTime
		teamKaliberMaskScaleYAnimation.fillMode = fillMode
		teamKaliberMaskScaleYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["teamKaliber_mask__yScale"]?.layer.add(teamKaliberMaskScaleYAnimation, forKey:"Untitled Animation_ScaleY")

		let teamKaliberMaskTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		teamKaliberMaskTranslationYAnimation.duration = 5.000
		teamKaliberMaskTranslationYAnimation.values = [0.000, 236.922] as [Float]
		teamKaliberMaskTranslationYAnimation.keyTimes = [0.000, 1.000] as [NSNumber]
		teamKaliberMaskTranslationYAnimation.timingFunctions = [linearTiming]
		teamKaliberMaskTranslationYAnimation.beginTime = beginTime
		teamKaliberMaskTranslationYAnimation.fillMode = fillMode
		teamKaliberMaskTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["teamKaliber_mask__root"]?.layer.add(teamKaliberMaskTranslationYAnimation, forKey:"Untitled Animation_TranslationY")
	}

	func removeUntitledAnimation() {
		self.layer.removeAnimation(forKey: "UntitledAnimation")
		self.viewsByName["teamKaliber_mask__yScale"]?.layer.removeAnimation(forKey: "Untitled Animation_ScaleY")
		self.viewsByName["teamKaliber_mask__root"]?.layer.removeAnimation(forKey: "Untitled Animation_TranslationY")
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
