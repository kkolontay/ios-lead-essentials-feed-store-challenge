//
//  ManagedFeedImage+CoreDataProperties.swift
//  FeedStoreChallenge
//
//  Created by kkolontay on 7/13/21.
//  Copyright © 2021 Essential Developer. All rights reserved.
//
//

import Foundation
import CoreData

extension ManagedFeedImage {
	@NSManaged var id: UUID
	@NSManaged var imageDescription: String?
	@NSManaged var location: String?
	@NSManaged var url: URL
	@NSManaged var cache: ManagedCache
}
