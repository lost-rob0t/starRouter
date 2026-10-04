// Generated from StarLang portable manifest. DO NOT EDIT.

export interface StarReference {
  schema: string;
  id: string;
}

export type DocumentId = string;

export type UnixTime = number;

export type ConfidenceScore = string;

export type Latitude = string;

export type Longitude = string;

export type PortNumber = number;

export type AsnNumber = number;

export type Uri = string;

export type EmailAddress = string;

export type PhoneNumber = string;

export type DistanceMeters = string;

export type Sensitivity = "public" | "internal" | "confidential" | "restricted" | "secret" | "unknown";

export type Visibility = "public" | "private" | "shared" | "inherited" | "unknown";

export type CollectionStatus = "raw" | "normalized" | "enriched" | "verified" | "disputed" | "stale" | "deleted" | "unknown";

export type SourceKind = "api" | "web" | "file" | "database" | "message" | "human" | "sensor" | "inference" | "import" | "export" | "unknown";

export type HashAlgorithm = "sha256" | "sha512" | "blake2b" | "blake3" | "md5" | "unknown";

export type RelationDirection = "directed" | "symmetric" | "inverse" | "unknown";

export type TargetState = "pending" | "scheduled" | "running" | "completed" | "failed" | "cancelled" | "paused" | "unknown";

export type MissionState = "draft" | "ready" | "running" | "paused" | "completed" | "failed" | "cancelled" | "archived" | "unknown";

export type MissionTargetState = "pending" | "active" | "completed" | "failed" | "skipped" | "cancelled" | "unknown";

export type RouteMode = "walk" | "bicycle" | "vehicle" | "transit" | "air" | "marine" | "mixed" | "unknown";

export type GeofenceTransition = "enter" | "exit" | "dwell" | "intersect" | "unknown";

export type EncounterKind = "co-observed" | "proximity" | "radio" | "visual" | "manual" | "derived" | "unknown";

export type SpatialQueryMode = "bounding-box" | "intersects" | "within" | "contains" | "nearest";

export type MapLayerKind = "documents" | "heatmap" | "route" | "geofence" | "encounters" | "custom" | "unknown";

export type GeoGeometryType = "point" | "line-string" | "polygon" | "multi-point" | "multi-line-string" | "multi-polygon" | "geometry-collection";

export type PcapFormat = "pcap" | "pcapng" | "unknown";

export type NetworkLayer = "eth" | "ip" | "ipv6" | "tcp" | "udp";

export type WirelessSecurity = "open" | "wep" | "wpa-psk" | "wpa2-psk" | "wpa2-enterprise" | "wpa3-psk" | "wpa3-enterprise" | "wpa2wpa3-psk" | "unknown";

export type WirelessStationType = "station" | "ap" | "bridge" | "bridge-ap" | "unknown";

export type NetworkDeviceClass = "other" | "unknown" | "general-purpose" | "router" | "broadband-router" | "switch" | "wap" | "bridge" | "firewall" | "load-balancer" | "proxy-server" | "print-server" | "terminal-server" | "terminal" | "phone" | "voip-phone" | "voip-adapter" | "pbx" | "webcam" | "printer" | "media-device" | "game-console" | "pda" | "storage" | "storage-misc" | "power-device" | "remote-management" | "security-misc" | "specialized" | "telecom-misc" | "iot";

export type ContentHashAlgorithm = "sha256" | "sha512" | "blake2b" | "blake3";

export interface Document {
  "id": DocumentId;
  "rev"?: string;
  "dataset": string;
  "dtype": string;
  "schemaVersion": string;
  "externalIds"?: Record<string, unknown>;
  "aliases"?: Array<string>;
  "sources"?: Array<StarReference>;
  "sourceUrls"?: Array<Uri>;
  "sourceRecordIds"?: Array<string>;
  "sourceKinds"?: Array<SourceKind>;
  "sourceLicense"?: string;
  "sourceTerms"?: Uri;
  "sourceRetrievedAt"?: UnixTime;
  "collectedAt"?: UnixTime;
  "observedAt"?: UnixTime;
  "firstSeenAt"?: UnixTime;
  "lastSeenAt"?: UnixTime;
  "createdAt"?: UnixTime;
  "updatedAt"?: UnixTime;
  "validFrom"?: UnixTime;
  "validUntil"?: UnixTime;
  "expiresAt"?: UnixTime;
  "collector"?: string;
  "collectorVersion"?: string;
  "collectionMethod"?: string;
  "collectionStatus"?: CollectionStatus;
  "runId"?: string;
  "correlationId"?: string;
  "causationId"?: string;
  "parentId"?: DocumentId;
  "rootId"?: DocumentId;
  "confidence"?: ConfidenceScore;
  "confidenceBasis"?: string;
  "qualityScore"?: ConfidenceScore;
  "completenessScore"?: ConfidenceScore;
  "verificationStatus"?: string;
  "verifiedAt"?: UnixTime;
  "verifiedBy"?: string;
  "provenance"?: Record<string, unknown>;
  "chainOfCustody"?: Array<Record<string, unknown>>;
  "transformHistory"?: Array<Record<string, unknown>>;
  "labels"?: Array<string>;
  "tags"?: Array<string>;
  "topics"?: Array<string>;
  "language"?: string;
  "jurisdiction"?: string;
  "countryCode"?: string;
  "regionCode"?: string;
  "timezone"?: string;
  "sensitivity"?: Sensitivity;
  "visibility"?: Visibility;
  "owner"?: string;
  "accessControl"?: Record<string, unknown>;
  "legalBasis"?: string;
  "retentionPolicy"?: string;
  "contentType"?: string;
  "encoding"?: string;
  "sizeBytes"?: number;
  "contentHash"?: string;
  "hashAlgorithm"?: HashAlgorithm;
  "normalizedHash"?: string;
  "raw"?: Record<string, unknown>;
  "rawContent"?: string;
  "notes"?: string;
  "deleted"?: boolean;
  "tombstoneReason"?: string;
  "extensions"?: Record<string, unknown>;
}

export interface Person extends Document {
  "fname"?: string;
  "mname"?: string;
  "lname"?: string;
  "fullName"?: string;
  "displayName"?: string;
  "prefix"?: string;
  "suffix"?: string;
  "pronouns"?: string;
  "bio"?: string;
  "dob"?: string;
  "dateOfDeath"?: string;
  "age"?: number;
  "gender"?: string;
  "nationality"?: Array<string>;
  "citizenship"?: Array<string>;
  "occupation"?: Array<string>;
  "employer"?: Array<StarReference>;
  "education"?: Array<Record<string, unknown>>;
  "skills"?: Array<string>;
  "interests"?: Array<string>;
  "region"?: string;
  "addresses"?: Array<StarReference>;
  "emails"?: Array<StarReference>;
  "phones"?: Array<StarReference>;
  "accounts"?: Array<StarReference>;
  "images"?: Array<StarReference>;
  "identifiers"?: Array<StarReference>;
  "misc"?: Array<Record<string, unknown>>;
  "etype"?: string;
  "eid"?: string;
}

export interface PersonIdentifier extends Document {
  "person": StarReference;
  "scheme": string;
  "value": string;
  "normalizedValue"?: string;
  "issuer"?: string;
  "primary"?: boolean;
  "sensitive"?: boolean;
  "sourceDocument"?: StarReference;
}

export interface Org extends Document {
  "reg"?: string;
  "registrationNumbers"?: Record<string, unknown>;
  "name": string;
  "legalName"?: string;
  "alternateNames"?: Array<string>;
  "bio"?: string;
  "description"?: string;
  "organizationType"?: string;
  "industry"?: Array<string>;
  "foundedDate"?: string;
  "dissolvedDate"?: string;
  "status"?: string;
  "country"?: string;
  "jurisdictions"?: Array<string>;
  "headquarters"?: StarReference;
  "addresses"?: Array<StarReference>;
  "website"?: Uri;
  "domains"?: Array<StarReference>;
  "emails"?: Array<StarReference>;
  "phones"?: Array<StarReference>;
  "parentOrg"?: StarReference;
  "subsidiaries"?: Array<StarReference>;
  "officers"?: Array<StarReference>;
  "employees"?: Array<StarReference>;
  "owners"?: Array<StarReference>;
  "beneficialOwners"?: Array<StarReference>;
  "identifiers"?: Record<string, unknown>;
  "etype"?: string;
  "eid"?: string;
}

export interface Relation extends Document {
  "source": StarReference;
  "destination": StarReference;
  "predicate": string;
  "direction"?: RelationDirection;
  "inversePredicate"?: string;
  "note"?: string;
  "evidence"?: Array<StarReference>;
  "weight"?: string;
  "validAt"?: UnixTime;
  "endedAt"?: UnixTime;
}

export interface Domain extends Document {
  "name": string;
  "unicodeName"?: string;
  "punycodeName"?: string;
  "recordType"?: string;
  "record"?: string;
  "resolvedAddresses"?: Array<StarReference>;
  "dnsRecords"?: Array<Record<string, unknown>>;
  "nameservers"?: Array<string>;
  "mxRecords"?: Array<Record<string, unknown>>;
  "txtRecords"?: Array<string>;
  "registrar"?: string;
  "registrant"?: StarReference;
  "whois"?: Record<string, unknown>;
  "registeredAt"?: UnixTime;
  "renewedAt"?: UnixTime;
  "registryExpiresAt"?: UnixTime;
  "dnssec"?: boolean;
  "statusCodes"?: Array<string>;
}

export interface Service extends Document {
  "host": StarReference;
  "port": PortNumber;
  "transport"?: string;
  "name"?: string;
  "product"?: string;
  "vendor"?: string;
  "version"?: string;
  "protocol"?: string;
  "scheme"?: string;
  "banner"?: string;
  "state"?: string;
  "tls"?: boolean;
  "tlsCertificate"?: StarReference;
  "cpe"?: Array<string>;
  "fingerprints"?: Record<string, unknown>;
  "firstOpenAt"?: UnixTime;
  "lastOpenAt"?: UnixTime;
}

export interface Port extends Document {
  "number": PortNumber;
  "transport"?: string;
  "protocol"?: string;
  "service"?: StarReference;
  "state"?: string;
  "reason"?: string;
  "banner"?: string;
  "host"?: StarReference;
  "firstOpenAt"?: UnixTime;
  "lastOpenAt"?: UnixTime;
}

export interface Network extends Document {
  "org"?: StarReference;
  "subnet": string;
  "asn"?: AsnNumber;
  "asnName"?: string;
  "rir"?: string;
  "country"?: string;
  "netname"?: string;
  "description"?: string;
  "announcedPrefixes"?: Array<string>;
  "upstreams"?: Array<AsnNumber>;
  "peers"?: Array<AsnNumber>;
}

export interface Asn extends Document {
  "number": AsnNumber;
  "name"?: string;
  "org"?: StarReference;
  "country"?: string;
  "rir"?: string;
  "registry"?: string;
  "prefixes"?: Array<string>;
  "upstreams"?: Array<AsnNumber>;
  "peers"?: Array<AsnNumber>;
}

export interface Host extends Document {
  "hostname"?: string;
  "hostnames"?: Array<string>;
  "ip": string;
  "ipVersion"?: number;
  "mac"?: string;
  "os"?: string;
  "osVersion"?: string;
  "deviceType"?: string;
  "vendor"?: string;
  "network"?: StarReference;
  "asn"?: AsnNumber;
  "geo"?: StarReference;
  "ports"?: Array<StarReference>;
  "services"?: Array<StarReference>;
  "domains"?: Array<StarReference>;
  "certificates"?: Array<StarReference>;
  "cloud"?: Record<string, unknown>;
  "virtualization"?: string;
  "alive"?: boolean;
  "lastProbedAt"?: UnixTime;
}

export interface Url extends Document {
  "url": Uri;
  "scheme"?: string;
  "username"?: string;
  "host"?: string;
  "port"?: PortNumber;
  "path"?: string;
  "query"?: string;
  "fragment"?: string;
  "canonicalUrl"?: Uri;
  "finalUrl"?: Uri;
  "statusCode"?: number;
  "method"?: string;
  "requestHeaders"?: Record<string, unknown>;
  "responseHeaders"?: Record<string, unknown>;
  "content"?: string;
  "contentTitle"?: string;
  "contentLength"?: number;
  "technologies"?: Array<string>;
  "redirectChain"?: Array<Uri>;
  "screenshot"?: StarReference;
  "fetchedAt"?: UnixTime;
}

export interface Breach extends Document {
  "name"?: string;
  "total"?: number;
  "description"?: string;
  "url"?: Uri;
  "breachedAt"?: UnixTime;
  "publishedAt"?: UnixTime;
  "dataClasses"?: Array<string>;
  "affectedOrganizations"?: Array<StarReference>;
  "affectedIdentifiers"?: Array<string>;
  "verified"?: boolean;
  "sensitive"?: boolean;
}

export interface Email extends Document {
  "address": EmailAddress;
  "user"?: string;
  "domain"?: string;
  "displayName"?: string;
  "password"?: string;
  "passwordHash"?: string;
  "hashType"?: string;
  "breaches"?: Array<StarReference>;
  "deliverable"?: boolean;
  "disposable"?: boolean;
  "roleAccount"?: boolean;
  "catchAll"?: boolean;
  "mxValid"?: boolean;
  "provider"?: string;
  "lastVerifiedAt"?: UnixTime;
}

export interface EmailMessage extends Document {
  "messageId"?: string;
  "threadId"?: string;
  "subject"?: string;
  "body"?: string;
  "bodyHtml"?: string;
  "to"?: Array<EmailAddress>;
  "from"?: EmailAddress;
  "replyTo"?: EmailAddress;
  "cc"?: Array<EmailAddress>;
  "bcc"?: Array<EmailAddress>;
  "headers"?: Record<string, unknown>;
  "attachments"?: Array<StarReference>;
  "sentAt"?: UnixTime;
  "receivedAt"?: UnixTime;
  "inReplyTo"?: string;
  "references"?: Array<string>;
  "mailbox"?: string;
  "flags"?: Array<string>;
}

export interface User extends Document {
  "url"?: Uri;
  "username": string;
  "displayName"?: string;
  "name"?: string;
  "platform": string;
  "platformUserId"?: string;
  "bio"?: string;
  "avatar"?: StarReference;
  "banner"?: StarReference;
  "createdOnPlatformAt"?: UnixTime;
  "followersCount"?: number;
  "followingCount"?: number;
  "postCount"?: number;
  "verified"?: boolean;
  "private"?: boolean;
  "suspended"?: boolean;
  "location"?: string;
  "website"?: Uri;
  "emails"?: Array<StarReference>;
  "phones"?: Array<StarReference>;
  "misc"?: Array<Record<string, unknown>>;
}

export interface Phone extends Document {
  "number": PhoneNumber;
  "e164"?: string;
  "nationalNumber"?: string;
  "extension"?: string;
  "carrier"?: string;
  "status"?: string;
  "phoneType"?: string;
  "lineType"?: string;
  "valid"?: boolean;
  "reachable"?: boolean;
  "ported"?: boolean;
  "location"?: string;
  "lastVerifiedAt"?: UnixTime;
}

export interface Geo extends Document {
  "geometryType": GeoGeometryType;
  "coordinateReferenceSystem"?: string;
  "boundingBox"?: Array<string>;
  "accuracyMeters"?: string;
  "geohash"?: string;
  "placeName"?: string;
  "placeKind"?: string;
}

export interface GeoPoint extends Geo {
  "longitude": Longitude;
  "latitude": Latitude;
  "altitudeMeters"?: string;
}

export interface GeoLineString extends Geo {
  "points": Array<StarReference>;
}

export interface GeoPolygon extends Geo {
  "rings": Array<StarReference>;
}

export interface GeoMultiPoint extends Geo {
  "points": Array<StarReference>;
}

export interface GeoMultiLineString extends Geo {
  "lines": Array<StarReference>;
}

export interface GeoMultiPolygon extends Geo {
  "polygons": Array<StarReference>;
}

export interface GeoGeometryCollection extends Geo {
  "geometries": Array<StarReference>;
}

export interface Location extends Document {
  "name"?: string;
  "geometry": StarReference;
  "address"?: StarReference;
  "locationType"?: string;
}

export interface Address extends Document {
  "formatted"?: string;
  "street"?: string;
  "street2"?: string;
  "unit"?: string;
  "city"?: string;
  "county"?: string;
  "state"?: string;
  "postal"?: string;
  "country"?: string;
  "addressType"?: string;
  "poBox"?: string;
  "building"?: string;
  "floor"?: string;
  "deliveryPoint"?: string;
  "geometry"?: StarReference;
  "validated"?: boolean;
  "validationProvider"?: string;
}

export interface Mission extends Document {
  "name": string;
  "objective": string;
  "state": MissionState;
  "scope"?: StarReference;
  "area"?: StarReference;
  "route"?: StarReference;
  "targets"?: Array<StarReference>;
  "geofences"?: Array<StarReference>;
  "assignedActors"?: Array<StarReference>;
  "parentMission"?: StarReference;
  "startsAt"?: UnixTime;
  "endsAt"?: UnixTime;
  "outputDataset"?: string;
  "constraints"?: Record<string, unknown>;
  "budget"?: Record<string, unknown>;
  "statusReason"?: string;
}

export interface MissionTarget extends Document {
  "mission": StarReference;
  "subject": StarReference;
  "state": MissionTargetState;
  "objective"?: string;
  "location"?: StarReference;
  "geofence"?: StarReference;
  "routeStop"?: number;
  "priority"?: number;
  "assignedActor"?: StarReference;
  "requiredCapabilities"?: Array<string>;
  "notBefore"?: UnixTime;
  "deadline"?: UnixTime;
  "options"?: Record<string, unknown>;
  "resultRefs"?: Array<StarReference>;
}

export interface Route extends Document {
  "name"?: string;
  "geometry": StarReference;
  "origin"?: StarReference;
  "destination"?: StarReference;
  "waypoints"?: Array<StarReference>;
  "mode"?: RouteMode;
  "distanceMeters"?: DistanceMeters;
  "estimatedDurationSeconds"?: number;
  "actualDurationSeconds"?: number;
  "plannedAt"?: UnixTime;
  "startedAt"?: UnixTime;
  "endedAt"?: UnixTime;
  "routingProvider"?: string;
  "constraints"?: Record<string, unknown>;
}

export interface Geofence extends Document {
  "name"?: string;
  "geometry": StarReference;
  "transitions": Array<GeofenceTransition>;
  "mission"?: StarReference;
  "subjects"?: Array<StarReference>;
  "activeFrom"?: UnixTime;
  "activeUntil"?: UnixTime;
  "dwellSeconds"?: number;
  "enabled"?: boolean;
  "policy"?: Record<string, unknown>;
}

export interface Encounter extends Document {
  "participants": Array<StarReference>;
  "kind": EncounterKind;
  "location"?: StarReference;
  "geometry"?: StarReference;
  "startedAt": UnixTime;
  "endedAt"?: UnixTime;
  "minimumDistanceMeters"?: DistanceMeters;
  "observations"?: Array<StarReference>;
  "evidence"?: Array<StarReference>;
  "sourceRunIds"?: Array<string>;
}

export interface MapLayer extends Document {
  "name": string;
  "kind": MapLayerKind;
  "sourceDataset"?: string;
  "query"?: Record<string, unknown>;
  "features"?: Array<StarReference>;
  "style"?: Record<string, unknown>;
  "visible"?: boolean;
  "minimumZoom"?: number;
  "maximumZoom"?: number;
  "readOnly"?: boolean;
}

export interface Message extends Document {
  "message": string;
  "platform": string;
  "user"?: StarReference;
  "isReply"?: boolean;
  "media"?: Array<StarReference>;
  "messageId"?: string;
  "replyTo"?: StarReference;
  "threadId"?: string;
  "group"?: string;
  "channel"?: string;
  "mentions"?: Array<StarReference>;
  "reactions"?: Record<string, unknown>;
  "edited"?: boolean;
  "editedAt"?: UnixTime;
  "sentAt"?: UnixTime;
  "deletedAt"?: UnixTime;
}

export interface Socialmpost extends Document {
  "content": string;
  "user"?: StarReference;
  "platform"?: string;
  "platformPostId"?: string;
  "replies"?: Array<StarReference>;
  "media"?: Array<StarReference>;
  "replyCount"?: number;
  "repostCount"?: number;
  "likeCount"?: number;
  "viewCount"?: number;
  "quoteCount"?: number;
  "bookmarkCount"?: number;
  "url"?: Uri;
  "links"?: Array<Uri>;
  "hashtags"?: Array<string>;
  "mentions"?: Array<StarReference>;
  "title"?: string;
  "group"?: string;
  "replyTo"?: StarReference;
  "conversationId"?: string;
  "publishedAt"?: UnixTime;
  "editedAt"?: UnixTime;
  "sensitive"?: boolean;
}

export interface Target extends Document {
  "actor": string;
  "target": string;
  "targetType"?: string;
  "scope"?: StarReference;
  "delay"?: number;
  "recurring"?: boolean;
  "schedule"?: string;
  "options"?: Record<string, unknown>;
  "state"?: TargetState;
  "priority"?: number;
  "notBefore"?: UnixTime;
  "deadline"?: UnixTime;
  "lastRunAt"?: UnixTime;
  "nextRunAt"?: UnixTime;
  "attempts"?: number;
  "maximumAttempts"?: number;
  "lastError"?: Record<string, unknown>;
}

export interface ActorManifest extends Document {
  "actor": string;
  "actorVersion"?: string;
  "consumerPaths"?: Array<string>;
  "targetOptions"?: Record<string, unknown>;
  "accepts"?: Array<string>;
  "produces"?: Array<string>;
  "capabilities"?: Array<string>;
  "runtime"?: string;
  "endpoint"?: string;
  "mailbox"?: Record<string, unknown>;
  "restartPolicy"?: string;
  "healthEndpoint"?: Uri;
  "heartbeatSeconds"?: number;
  "metadata"?: Record<string, unknown>;
}

export interface Artifact extends Document {
  "name"?: string;
  "filename"?: string;
  "mediaType"?: string;
  "uri"?: Uri;
  "storageUri"?: Uri;
  "bytesHash"?: string;
  "size"?: number;
  "extractedText"?: string;
  "ocrText"?: string;
  "metadata"?: Record<string, unknown>;
  "attachments"?: Array<StarReference>;
}

export interface Finding extends Document {
  "title": string;
  "description"?: string;
  "findingType"?: string;
  "severity"?: string;
  "status"?: string;
  "asset"?: StarReference;
  "evidence"?: Array<StarReference>;
  "recommendation"?: string;
  "discoveredAt"?: UnixTime;
  "resolvedAt"?: UnixTime;
  "cve"?: Array<string>;
  "cwe"?: Array<string>;
  "cvss"?: Record<string, unknown>;
}

export interface Scope extends Document {
  "name": string;
  "program"?: string;
  "inScope"?: Array<string>;
  "outOfScope"?: Array<string>;
  "rules"?: string;
  "startsAt"?: UnixTime;
  "endsAt"?: UnixTime;
  "rateLimits"?: Record<string, unknown>;
  "allowedTools"?: Array<string>;
  "prohibitedActions"?: Array<string>;
}

export interface File extends Document {
  "name"?: string;
  "filename"?: string;
  "originalName"?: string;
  "uri"?: Uri;
  "storageUri"?: Uri;
  "path"?: string;
  "fileKind"?: string;
  "mediaType"?: string;
  "declaredMediaType"?: string;
  "sniffedMediaType"?: string;
  "magicType"?: string;
  "detectedFormat"?: string;
  "extension"?: string;
  "storageId"?: string;
  "bytesHash": string;
  "bytesHashAlgorithm": ContentHashAlgorithm;
  "hashes"?: Record<string, unknown>;
  "trustFilenameExtension"?: boolean;
  "compression"?: string;
  "encrypted"?: boolean;
  "passwordProtected"?: boolean;
  "archive"?: boolean;
  "archiveEntries"?: Array<StarReference>;
  "quarantined"?: boolean;
  "executable"?: boolean;
  "parseStatus"?: string;
  "parser"?: string;
  "parserVersion"?: string;
  "parseError"?: string;
  "containerFile"?: StarReference;
  "parentFile"?: StarReference;
  "derivedFiles"?: Array<StarReference>;
  "captureAction"?: StarReference;
  "extractedMetadata"?: Record<string, unknown>;
}

export interface Media extends Document {
  "sourceFile": StarReference;
  "mediaType"?: string;
  "codec"?: string;
  "container"?: string;
  "durationSeconds"?: string;
  "width"?: number;
  "height"?: number;
  "title"?: string;
  "creatorRefs"?: Array<StarReference>;
  "publisher"?: StarReference;
  "transcript"?: string;
  "transcriptFile"?: StarReference;
  "ocrText"?: string;
  "derivativeFiles"?: Array<StarReference>;
  "captureAction"?: StarReference;
}

export interface Image extends File {
  "width"?: number;
  "height"?: number;
  "orientation"?: number;
  "capturedAt"?: UnixTime;
  "captureDevice"?: StarReference;
  "location"?: StarReference;
  "exif"?: Record<string, unknown>;
  "ocrText"?: string;
  "thumbnailFiles"?: Array<StarReference>;
  "derivedImages"?: Array<StarReference>;
}

export interface Picture extends Image {
  "pictureKind"?: string;
}

export interface Video extends File {
  "container"?: string;
  "codec"?: string;
  "width"?: number;
  "height"?: number;
  "durationSeconds"?: string;
  "frameRate"?: string;
  "frameCount"?: number;
  "bitrate"?: number;
  "capturedAt"?: UnixTime;
  "captureDevice"?: StarReference;
  "location"?: StarReference;
  "audioTracks"?: Array<StarReference>;
  "frames"?: Array<StarReference>;
  "transcript"?: StarReference;
  "ocrObservations"?: Array<StarReference>;
}

export interface VideoFrame extends Image {
  "video": StarReference;
  "frameIndex": number;
  "timestampMs": number;
  "keyFrame"?: boolean;
  "detectedObjects"?: Array<StarReference>;
  "entityObservations"?: Array<StarReference>;
  "faceObservations"?: Array<StarReference>;
}

export interface Audio extends File {
  "codec"?: string;
  "container"?: string;
  "sampleRateHz"?: number;
  "channels"?: number;
  "bitDepth"?: number;
  "durationSeconds"?: string;
  "capturedAt"?: UnixTime;
  "captureDevice"?: StarReference;
  "location"?: StarReference;
  "transcripts"?: Array<StarReference>;
  "speakerObservations"?: Array<StarReference>;
}

export interface AudioSegment extends Document {
  "recording": StarReference;
  "startMs": number;
  "endMs": number;
  "segmentFile"?: StarReference;
  "channel"?: number;
}

export interface SpeechSegment extends AudioSegment {
  "text"?: string;
  "speaker"?: StarReference;
  "transcript"?: StarReference;
}

export interface Speaker extends Document {
  "label"?: string;
  "person"?: StarReference;
  "embeddingModel"?: string;
  "embeddingRef"?: StarReference;
  "observationCount"?: number;
  "firstObservedAt"?: UnixTime;
  "lastObservedAt"?: UnixTime;
}

export interface SpeakerObservation extends Document {
  "speaker"?: StarReference;
  "recording": StarReference;
  "segment"?: StarReference;
  "startMs": number;
  "endMs": number;
  "embeddingModel"?: string;
  "embeddingRef"?: StarReference;
}

export interface SpeakerTurn extends Document {
  "recording": StarReference;
  "speaker"?: StarReference;
  "segment": StarReference;
  "turnIndex": number;
  "startMs": number;
  "endMs": number;
  "text"?: string;
}

export interface Transcript extends Document {
  "sourceMedia": StarReference;
  "transcriptFile"?: StarReference;
  "text"?: string;
  "model"?: string;
  "modelVersion"?: string;
  "actor"?: string;
  "startedAt"?: UnixTime;
  "completedAt"?: UnixTime;
  "segments"?: Array<StarReference>;
  "speakerTurns"?: Array<StarReference>;
  "wordTimings"?: Array<Record<string, unknown>>;
}

export interface HttpTransaction extends Document {
  "transactionId": string;
  "requestId"?: string;
  "connectionId"?: string;
  "parentTransactionId"?: string;
  "method": string;
  "url": Uri;
  "scheme"?: string;
  "host"?: string;
  "port"?: PortNumber;
  "path"?: string;
  "query"?: string;
  "httpVersion"?: string;
  "requestHeaders"?: Record<string, unknown>;
  "requestBodySize"?: number;
  "requestBodyHash"?: string;
  "requestBodyArtifactUri"?: Uri;
  "responseStatus": number;
  "responseReason"?: string;
  "responseHeaders"?: Record<string, unknown>;
  "responseBodySize"?: number;
  "responseBodyHash"?: string;
  "responseBodyArtifactUri"?: Uri;
  "startedAt"?: string;
  "endedAt"?: string;
  "durationMs"?: string;
  "remoteIp"?: string;
  "remotePort"?: PortNumber;
  "tlsVersion"?: string;
  "tlsCipher"?: string;
  "tlsServerName"?: string;
  "certificateSha256"?: string;
  "redirectFromId"?: string;
  "redirectToId"?: string;
  "captureActorUri"?: Uri;
  "challengeStatus"?: string;
  "captchaDetectionId"?: string;
  "captchaCapability"?: string;
  "browserSessionRef"?: Uri;
  "networkContextRef"?: Uri;
  "proxyActorUri"?: Uri;
  "redactedHeaders"?: Array<string>;
  "bodyCapturePolicy"?: string;
  "requestTruncated"?: boolean;
  "responseTruncated"?: boolean;
}

export interface WebCapture extends Document {
  "captureId": string;
  "url": Uri;
  "finalUrl"?: Uri;
  "title"?: string;
  "statusCode"?: number;
  "browser"?: string;
  "browserVersion"?: string;
  "viewportWidth"?: number;
  "viewportHeight"?: number;
  "deviceScaleFactor"?: string;
  "screenshotUri": Uri;
  "screenshotHash": string;
  "screenshotMediaType"?: string;
  "screenshotSizeBytes"?: number;
  "domArtifactUri"?: Uri;
  "domArtifactHash"?: string;
  "domArtifactSizeBytes"?: number;
  "capturedAt"?: string;
  "httpTransactionIds"?: Array<string>;
  "captureActorUri"?: Uri;
  "challengeStatus"?: string;
  "captchaDetectionId"?: string;
  "captchaCapability"?: string;
  "browserSessionRef"?: Uri;
  "networkContextRef"?: Uri;
  "proxyActorUri"?: Uri;
}

export interface PcapCapture extends Document {
  "captureId": string;
  "file"?: StarReference;
  "fileUri": Uri;
  "fileSha256": string;
  "format": PcapFormat;
  "fileSizeBytes"?: number;
  "packetCount"?: number;
  "captureStart"?: UnixTime;
  "captureEnd"?: UnixTime;
  "durationSeconds"?: string;
  "captureSoftware"?: string;
  "sensor"?: StarReference;
  "interfaces"?: Array<Record<string, unknown>>;
  "protocolHierarchy"?: Array<Record<string, unknown>>;
  "analysisActorUri"?: Uri;
}

export interface NetworkConversation extends Document {
  "conversationId": string;
  "capture": StarReference;
  "layer": NetworkLayer;
  "endpointA"?: Record<string, unknown>;
  "endpointB"?: Record<string, unknown>;
  "aPackets"?: number;
  "bPackets"?: number;
  "aBytes"?: number;
  "bBytes"?: number;
  "protocols"?: Array<string>;
  "firstFrameNum"?: number;
  "lastFrameNum"?: number;
  "startedAt"?: UnixTime;
  "endedAt"?: UnixTime;
  "durationSeconds"?: string;
}

export interface NetworkDevice extends Document {
  "deviceId"?: string;
  "deviceClass": NetworkDeviceClass;
  "hardwareClass"?: string;
  "vendor"?: string;
  "model"?: string;
  "firmwareVersion"?: string;
  "serialNumber"?: string;
  "cpe"?: string;
  "parentDevice"?: StarReference;
  "site"?: StarReference;
  "managementAddresses"?: Array<StarReference>;
  "hostedHosts"?: Array<StarReference>;
  "discoveredBy"?: Array<StarReference>;
  "firstSeen"?: UnixTime;
  "lastSeen"?: UnixTime;
}

export interface WirelessNetwork extends Document {
  "bssid": string;
  "ssid"?: string;
  "security": WirelessSecurity;
  "authMode"?: string;
  "cipherSuite"?: string;
  "channel"?: number;
  "frequencyMhz"?: number;
  "band"?: string;
  "signalDbm"?: number;
  "vendor"?: string;
  "clientCount"?: number;
  "sourceNetworkId"?: string;
  "hostedHost"?: StarReference;
  "location"?: StarReference;
  "locationAccuracyMeters"?: string;
  "observations"?: number;
  "firstSeen"?: UnixTime;
  "lastSeen"?: UnixTime;
}

export interface WirelessStation extends Document {
  "mac": string;
  "stationType"?: WirelessStationType;
  "lastBssid"?: string;
  "probeSsids"?: Array<string>;
  "signalDbm"?: number;
  "vendor"?: string;
  "packets"?: number;
  "dataBytes"?: number;
  "observations"?: number;
  "sourceDevice"?: StarReference;
  "firstSeen"?: UnixTime;
  "lastSeen"?: UnixTime;
}

export interface UpsertDocument {
  "document": StarReference;
  "dataset": string;
  "runId"?: string;
}

export interface QueryDocuments {
  "dataset": string;
  "dtype"?: string;
  "filters"?: Record<string, unknown>;
  "limit"?: number;
  "cursor"?: string;
}

export interface ScheduleTarget {
  "target": StarReference;
  "requestedBy"?: string;
}

export interface ScheduleMission {
  "mission": StarReference;
  "requestedBy"?: string;
}

export interface QuerySpatial {
  "dataset": string;
  "mode": SpatialQueryMode;
  "geometry"?: StarReference;
  "boundingBox"?: Array<string>;
  "referencePoint"?: StarReference;
  "maximumDistanceMeters"?: DistanceMeters;
  "dtype"?: string;
  "filters"?: Record<string, unknown>;
  "atTime"?: UnixTime;
  "limit"?: number;
  "cursor"?: string;
}

export interface ActorManifestAnnouncement {
  "manifest": StarReference;
  "announcedAt": UnixTime;
}

export const actorContracts = {
} as const;
