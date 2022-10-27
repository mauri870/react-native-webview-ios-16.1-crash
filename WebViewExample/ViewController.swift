import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView?
    let targetURL: String = "http://localhost:8000"
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView!.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: targetURL)
        let request = URLRequest(url: url!)
        webView?.load(request)
    }
}

