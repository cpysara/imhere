import UIKit

class DetailsVC: UIViewController {
    
    var passedData = DemoData(title: "Name", img: #imageLiteral(resourceName: "restaurant1"), time: 0, lat: 0, long: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        setupViews()
    }
    
    func setupViews() {
        self.view.addSubview(myScrollView)
        myScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive=true
        myScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive=true
        myScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive=true
        myScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive=true
        myScrollView.contentSize.height = 800
        
        myScrollView.addSubview(containerView)
        containerView.centerXAnchor.constraint(equalTo: myScrollView.centerXAnchor).isActive=true
        containerView.topAnchor.constraint(equalTo: myScrollView.topAnchor).isActive=true
        containerView.widthAnchor.constraint(equalTo: myScrollView.widthAnchor).isActive=true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive=true
        
        containerView.addSubview(imgView)
        imgView.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive=true
        imgView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive=true
        imgView.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive=true
        imgView.heightAnchor.constraint(equalToConstant: 200).isActive=true
        imgView.image = passedData.img
        
        containerView.addSubview(lblTitle)
        lblTitle.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 15).isActive=true
        lblTitle.topAnchor.constraint(equalTo: imgView.bottomAnchor).isActive=true
        lblTitle.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -15).isActive=true
        lblTitle.heightAnchor.constraint(equalToConstant: 50).isActive=true
        lblTitle.text = passedData.title
        
        containerView.addSubview(lblTime)
        lblTime.leftAnchor.constraint(equalTo: lblTitle.leftAnchor).isActive=true
        lblTime.topAnchor.constraint(equalTo: lblTitle.bottomAnchor).isActive=true
        lblTime.rightAnchor.constraint(equalTo: lblTitle.rightAnchor).isActive=true
        lblTime.heightAnchor.constraint(equalToConstant: 40).isActive=true
        lblTime.text = "\(passedData.time) mins"
        
        containerView.addSubview(lblDescription)
        lblDescription.leftAnchor.constraint(equalTo: lblTitle.leftAnchor).isActive=true
        lblDescription.topAnchor.constraint(equalTo: lblTime.bottomAnchor, constant: 10).isActive=true
        lblDescription.rightAnchor.constraint(equalTo: lblTitle.rightAnchor).isActive=true
        lblDescription.text = "\"\""
        lblDescription.sizeToFit()
    }
    
    let myScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints=false
        scrollView.showsVerticalScrollIndicator=false
        scrollView.showsHorizontalScrollIndicator=false
        return scrollView
    }()
    
    let containerView: UIView = {
        let v=UIView()
        v.translatesAutoresizingMaskIntoConstraints=false
        return v
    }()
    
    let imgView: UIImageView = {
        let v=UIImageView()
        v.image = #imageLiteral(resourceName: "restaurant1")
        v.contentMode = .scaleAspectFill
        v.clipsToBounds=true
        v.translatesAutoresizingMaskIntoConstraints=false
        return v
    }()
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text = "Name"
        lbl.font=UIFont.systemFont(ofSize: 28)
        lbl.textColor = UIColor.black
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblTime: UILabel = {
        let lbl=UILabel()
        lbl.text = "Estimated Time"
        lbl.font=UIFont.boldSystemFont(ofSize: 24)
        lbl.textColor = UIColor(white: 0.5, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let lblDescription: UILabel = {
        let lbl=UILabel()
        lbl.text = "Description"
        lbl.numberOfLines = 0
        lbl.font=UIFont.systemFont(ofSize: 20)
        lbl.textColor = UIColor.gray
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
}
