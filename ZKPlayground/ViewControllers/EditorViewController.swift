//
//  EditorViewController.swift
//  ZKPlayground
//
//  Created by Ronald "Danger" Mannak on 3/20/19.
//  Copyright © 2019 A Puzzle A Day. All rights reserved.
//

import Cocoa
import SourceEditor
import SavannaKit

class EditorViewController: NSViewController {

    let lexer = SokratesLexer()
    
    @IBOutlet weak var syntaxTextView: SyntaxTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        syntaxTextView.theme = DefaultSourceCodeTheme()
        syntaxTextView.delegate = self
    }
    
}


extension EditorViewController: SyntaxTextViewDelegate {
    
    func didChangeText(_ syntaxTextView: SyntaxTextView) {
        
        
    }
    
    func didChangeSelectedRange(_ syntaxTextView: SyntaxTextView, selectedRange: NSRange) {
        
        
    }
    
    func lexerForSource(_ source: String) -> Lexer {
        return lexer
    }
    
}