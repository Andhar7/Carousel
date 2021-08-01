//
//  Post.swift
//  Post
//
//  Created by Andrej Kling on 01.08.21.
//

import SwiftUI

// Post Model And Sample Data...
struct Post: Identifiable, Hashable{
    var id = UUID().uuidString
    var postImage: String
}

var dataImage : [Post] = [

  Post(postImage: "c1"),
  Post(postImage: "c2"),
  Post(postImage: "c3"),
  Post(postImage: "c4"),
  Post(postImage: "c5"),
  Post(postImage: "c6"),
  Post(postImage: "c7"),
  Post(postImage: "c8"),
  Post(postImage: "c9"),
  Post(postImage: "c10"),
  Post(postImage: "c11"),
  Post(postImage: "c12"),
  Post(postImage: "c13"),
  Post(postImage: "c14"),
  Post(postImage: "c15"),
  Post(postImage: "c16")
]
