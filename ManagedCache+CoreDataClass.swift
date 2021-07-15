//
//  ManagedCache+CoreDataClass.swift
//  FeedStoreChallenge
//
//  Created by kkolontay on 7/13/21.
//  Copyright © 2021 Essential Developer. All rights reserved.
//
//

import Foundation
import CoreData


@objc(ManagedCache)
final class ManagedCache: NSManagedObject {
	private static var typeName: String {
		return String(describing: self)
	}

	var localFeed: [LocalFeedImage] {
		return feed.compactMap { ($0 as? ManagedFeedImage)?.local }
	}

	static func find(in context: NSManagedObjectContext) throws -> ManagedCache? {
		let request = NSFetchRequest<ManagedCache>(entityName: ManagedCache.typeName)
		request.returnsObjectsAsFaults = false
		return try context.fetch(request).first
	}

	static func newInstance(in context: NSManagedObjectContext) throws -> ManagedCache {
		try find(in: context).map(context.delete)
		return ManagedCache(context: context)
	}
}
