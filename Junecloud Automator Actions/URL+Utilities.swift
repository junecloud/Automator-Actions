//
//  URL+Utilities.swift
//  Junecloud Automator Actions
//
//  Created by Mike Piontek on 12/13/17.
//  Copyright © 2017 Junecloud LLC. All rights reserved.
//

import Foundation

extension URL {

	static var actualHomeFolderURL: URL? {
		guard let pw = getpwuid(getuid()) else { return nil }
		guard let dir = pw.pointee.pw_dir else { return nil }
		return URL(fileURLWithFileSystemRepresentation: dir, isDirectory: true, relativeTo: nil)
	}

	public func appendingPathComponents(_ components: String...) -> URL {
		var url = self
		for component in components {
			url.appendPathComponent(component)
		}
		return url
	}

}
