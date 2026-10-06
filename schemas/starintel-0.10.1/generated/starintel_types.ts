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

export type AnalysisConfidence = string;

export type AssetIdentifierRecordsItemConfidence = string;

export type AssetExternalIdsItemConfidence = string;

export type CampaignFinanceSourceSystemIdsItemConfidence = string;

export type ClaimCertainty = string;

export type ContractSourceSystemIdsItemConfidence = string;

export type EntityIdentityConfidence = string;

export type EntityIdentityKeysItemConfidence = string;

export type EntityExternalIdsItemConfidence = string;

export type EvidenceRecordConfidence = string;

export type ProcurementSourceSystemIdsItemConfidence = string;

export type ProductExternalIdsItemConfidence = string;

export type ResearchNodeLimitsMaxDepth = number;

export type ResearchNodeLimitsMaxActorRuns = number;

export type ResearchNodeLimitsMaxRequests = number;

export type ResearchNodeLimitsMaxElapsedMs = number;

export type ResearchNodeLimitsMaxRepeatedState = number;

export type ResearchNodeLimitsMaxCost = string;

export type ResearchNodeCountersDepth = number;

export type ResearchNodeCountersActorRuns = number;

export type ResearchNodeCountersRequests = number;

export type ResearchNodeCountersRepeatedState = number;

export type ResearchNodeCountersElapsedMs = number;

export type ResearchNodeCountersCost = string;

export type SourceCredibility = string;

export type SourceReliability = string;

export type SourceAuthenticity = string;

export type SourceIndependence = string;

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

export type OperationRole = "collection" | "working" | "derived" | "publication" | "reference" | "archive";

export type OperationAccess = "read" | "append" | "write" | "read-write";

export type OperationCategory = "actor" | "software" | "hardware" | "device" | "source" | "dataset" | "schema" | "protocol" | "infrastructure" | "research";

export type OperationCapabilityStatus = "required" | "missing" | "planned" | "in-progress" | "available" | "resolved" | "waived";

export type OperationStatus = "draft" | "planned" | "active" | "blocked" | "suspended" | "completed" | "aborted" | "archived";

export type OperationAssignmentStatus = "planned" | "assigned" | "active" | "completed" | "blocked" | "released";

export type OperationPostActionStatus = "planned" | "ready" | "running" | "completed" | "failed" | "skipped";

export type OperationState = "planned" | "ready" | "active" | "blocked" | "awaiting-review" | "completed" | "skipped" | "failed" | "aborted";

export type ResearchNodeStatus = "draft" | "queued" | "running" | "paused" | "blocked" | "completed" | "failed" | "killed";

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

export interface OperationCondition {
  "conditionId"?: string;
  "kind": string;
  "predicate"?: string;
  "subject"?: string;
  "object"?: string;
  "expression"?: string;
  "required"?: boolean;
  "metadata"?: Record<string, unknown>;
}

export interface OperationTargetPolicy {
  "allowedDtypes"?: Array<string>;
  "allowedTargetTypes"?: Array<string>;
  "allowedRoles"?: Array<string>;
  "selectors"?: Array<Record<string, unknown>>;
}

export interface OperationTargetBindings {
  "primary"?: Array<string>;
  "supporting"?: Array<string>;
  "derived"?: Array<string>;
  "excluded"?: Array<string>;
}

export interface OperationDatasetBinding {
  "bindingId": string;
  "dataset": string;
  "role": OperationRole;
  "access": OperationAccess;
  "phases"?: Array<string>;
  "purpose"?: string;
}

export interface OperationCapabilityGap {
  "capabilityId": string;
  "category": OperationCategory;
  "description": string;
  "requiredBy"?: Array<string>;
  "blocking": boolean;
  "status": OperationCapabilityStatus;
  "capabilityRef"?: string;
  "resolutionRef"?: string;
  "owner"?: string;
  "metadata"?: Record<string, unknown>;
}

export interface OperationAssignment {
  "assignmentId": string;
  "agentId"?: string;
  "actorId"?: string;
  "phaseIds": Array<string>;
  "role"?: string;
  "status": OperationAssignmentStatus;
  "metadata"?: Record<string, unknown>;
}

export interface OperationPostAction {
  "actionId": string;
  "actionType": string;
  "condition"?: OperationCondition;
  "targetIds"?: Array<string>;
  "datasetBindingIds"?: Array<string>;
  "status": OperationPostActionStatus;
  "config"?: Record<string, unknown>;
}

export interface OperationPhase {
  "phaseId": string;
  "title"?: string;
  "objective": string;
  "state": OperationState;
  "dependsOn"?: Array<string>;
  "entryConditions"?: Array<OperationCondition>;
  "exitConditions"?: Array<OperationCondition>;
  "inScope"?: Array<string>;
  "outOfScope"?: Array<string>;
  "targetPolicy"?: OperationTargetPolicy;
  "targetIds"?: Array<string>;
  "datasetBindingIds"?: Array<string>;
  "requiredCapabilityIds"?: Array<string>;
  "deliverableIds"?: Array<string>;
  "completionEvidence"?: Array<string>;
}

export interface Operation extends Document {
  "mission": string;
  "objectives"?: Array<string>;
  "status": OperationStatus;
  "inScope"?: Array<string>;
  "outOfScope"?: Array<string>;
  "targetPolicy"?: OperationTargetPolicy;
  "targets"?: OperationTargetBindings;
  "phases": Array<OperationPhase>;
  "datasets"?: Array<OperationDatasetBinding>;
  "capabilityGaps"?: Array<OperationCapabilityGap>;
  "assignments"?: Array<OperationAssignment>;
  "postActions"?: Array<OperationPostAction>;
}

export interface InvestigationTarget extends Document {
  "actor"?: string;
  "target": string;
  "targetId"?: string;
  "targetType"?: string;
  "query"?: string;
  "researchQuestion"?: string;
  "hypotheses"?: Array<string>;
  "objectives"?: Array<string>;
  "inScope"?: Array<string>;
  "outOfScope"?: Array<string>;
  "scopeType"?: string;
  "seedIds"?: Array<string>;
  "sourceIds"?: Array<string>;
  "requiredDtypes"?: Array<string>;
  "preferredSources"?: Array<string>;
  "excludedSources"?: Array<string>;
  "delay"?: number;
  "recurring"?: boolean;
  "recurrence"?: string;
  "options"?: Array<unknown>;
  "depth"?: number;
  "maxDepth"?: number;
  "breadth"?: number;
  "priority"?: string;
  "score"?: string;
  "selectionReason"?: Array<string>;
  "status"?: string;
  "nextRunAt"?: string | null;
}

export interface AssetIdentifierRecordsItem {
  "scheme": string;
  "value": string;
  "issuer"?: string;
  "jurisdiction"?: string;
  "canonical"?: boolean;
  "confidence"?: AssetIdentifierRecordsItemConfidence;
  "validFrom"?: string | null;
  "validTo"?: string | null;
  "url"?: string;
  "notes"?: string;
}

export interface AssetValuationRecordsItem {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface AssetExternalIdsItem {
  "scheme": string;
  "value": string;
  "issuer"?: string;
  "jurisdiction"?: string;
  "canonical"?: boolean;
  "confidence"?: AssetExternalIdsItemConfidence;
  "validFrom"?: string | null;
  "validTo"?: string | null;
  "url"?: string;
  "notes"?: string;
}

export interface CampaignFinanceAmountRecord {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface CampaignFinanceAggregateAmount {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface CampaignFinanceSourceSystemIdsItem {
  "scheme": string;
  "value": string;
  "issuer"?: string;
  "jurisdiction"?: string;
  "canonical"?: boolean;
  "confidence"?: CampaignFinanceSourceSystemIdsItemConfidence;
  "validFrom"?: string | null;
  "validTo"?: string | null;
  "url"?: string;
  "notes"?: string;
}

export interface ContractFundingRecordsItem {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface ContractSourceSystemIdsItem {
  "scheme": string;
  "value": string;
  "issuer"?: string;
  "jurisdiction"?: string;
  "canonical"?: boolean;
  "confidence"?: ContractSourceSystemIdsItemConfidence;
  "validFrom"?: string | null;
  "validTo"?: string | null;
  "url"?: string;
  "notes"?: string;
}

export interface EmploymentCompensationRecordsItem {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface EntityIdentityKeysItem {
  "scheme": string;
  "value": string;
  "issuer"?: string;
  "jurisdiction"?: string;
  "canonical"?: boolean;
  "confidence"?: EntityIdentityKeysItemConfidence;
  "validFrom"?: string | null;
  "validTo"?: string | null;
  "url"?: string;
  "notes"?: string;
}

export interface EntityExternalIdsItem {
  "scheme": string;
  "value": string;
  "issuer"?: string;
  "jurisdiction"?: string;
  "canonical"?: boolean;
  "confidence"?: EntityExternalIdsItemConfidence;
  "validFrom"?: string | null;
  "validTo"?: string | null;
  "url"?: string;
  "notes"?: string;
}

export interface FinancialObservationAmountRecord {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface GrantFundingRecordsItem {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface GrantMatchingAmount {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface LobbyingFilingAmountRecordsItem {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface OwnershipValueRecord {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface ProcurementFundingRecordsItem {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface ProcurementSourceSystemIdsItem {
  "scheme": string;
  "value": string;
  "issuer"?: string;
  "jurisdiction"?: string;
  "canonical"?: boolean;
  "confidence"?: ProcurementSourceSystemIdsItemConfidence;
  "validFrom"?: string | null;
  "validTo"?: string | null;
  "url"?: string;
  "notes"?: string;
}

export interface ProductPricingRecordsItem {
  "amount"?: string;
  "currency"?: string;
  "basis"?: string;
  "asOf"?: string | null;
  "notes"?: string;
}

export interface ProductExternalIdsItem {
  "scheme": string;
  "value": string;
  "issuer"?: string;
  "jurisdiction"?: string;
  "canonical"?: boolean;
  "confidence"?: ProductExternalIdsItemConfidence;
  "validFrom"?: string | null;
  "validTo"?: string | null;
  "url"?: string;
  "notes"?: string;
}

export interface ResearchNodeLimits {
  "maxDepth"?: ResearchNodeLimitsMaxDepth;
  "maxActorRuns"?: ResearchNodeLimitsMaxActorRuns;
  "maxRequests"?: ResearchNodeLimitsMaxRequests;
  "maxElapsedMs"?: ResearchNodeLimitsMaxElapsedMs;
  "maxRepeatedState"?: ResearchNodeLimitsMaxRepeatedState;
  "maxCost"?: ResearchNodeLimitsMaxCost;
  "currency"?: string;
}

export interface ResearchNodeStop {
  "whenActorQueueEmpty"?: boolean;
  "whenNoNewDocuments"?: boolean;
  "whenObjectiveSatisfied"?: boolean;
  "haltOnActorFailure"?: boolean;
}

export interface ResearchNodeCounters {
  "depth"?: ResearchNodeCountersDepth;
  "actorRuns"?: ResearchNodeCountersActorRuns;
  "requests"?: ResearchNodeCountersRequests;
  "repeatedState"?: ResearchNodeCountersRepeatedState;
  "elapsedMs"?: ResearchNodeCountersElapsedMs;
  "cost"?: ResearchNodeCountersCost;
}

export interface ResearchNodeHistoryItem {
  "from"?: string | null;
  "to": string;
  "at": string;
  "message"?: string;
  "error"?: string;
  "actorId"?: string;
  "runId"?: string;
  "outputIds"?: Array<string>;
  "artifactIds"?: Array<string>;
}

export interface Alert extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "ruleId"?: string;
  "triggerEventId"?: string;
  "relatedAlertIds"?: Array<string>;
  "firstTriggeredAt"?: string | null;
  "lastTriggeredAt"?: string | null;
  "occurrenceCount"?: number;
  "acknowledgementActions"?: Array<Record<string, unknown>>;
  "suppressedUntil"?: string;
  "resolvedAt"?: string | null;
  "resolution"?: string;
  "alertType"?: string;
  "subjectIds"?: Array<string>;
  "condition"?: string;
  "threshold"?: string;
  "triggeredAt"?: string | null;
  "severity"?: string;
  "acknowledgedBy"?: Array<string>;
}

export interface Analysis extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "hypotheses"?: Array<string>;
  "methodIds"?: Array<string>;
  "claimIds"?: Array<string>;
  "logic"?: string;
  "reasoningArtifactIds"?: Array<string>;
  "uncertaintySources"?: Array<string>;
  "dependencyIds"?: Array<string>;
  "reviewIds"?: Array<string>;
  "outputIds"?: Array<string>;
  "question"?: string;
  "method"?: string;
  "framework"?: string;
  "scope"?: string;
  "inputIds"?: Array<string>;
  "findingIds"?: Array<string>;
  "findings"?: Array<string>;
  "conclusions"?: Array<string>;
  "recommendations"?: Array<string>;
  "counterarguments"?: Array<string>;
  "limitations"?: Array<string>;
  "unresolved"?: Array<string>;
  "payloadConfidence"?: AnalysisConfidence;
}

export interface Asset extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "assetClass"?: string;
  "custodianIds"?: Array<string>;
  "beneficialOwnerIds"?: Array<string>;
  "identifierRecords"?: Array<AssetIdentifierRecordsItem>;
  "valuationRecords"?: Array<AssetValuationRecordsItem>;
  "acquiredAt"?: string | null;
  "disposedAt"?: string | null;
  "acquisitionEventId"?: string;
  "disposalEventId"?: string;
  "componentIds"?: Array<string>;
  "etype"?: string;
  "eid"?: string;
  "name"?: string;
  "displayName"?: string;
  "legalName"?: string;
  "shortName"?: string;
  "formerNames"?: Array<string>;
  "bio"?: string;
  "payloadJurisdiction"?: string;
  "country"?: string;
  "foundedAt"?: string | null;
  "dissolvedAt"?: string | null;
  "website"?: string;
  "imageUrl"?: string;
  "logoUrl"?: string;
  "payloadExternalIds"?: Array<AssetExternalIdsItem>;
  "contactIds"?: Array<string>;
  "locationIds"?: Array<string>;
  "assetType"?: string;
  "ownerIds"?: Array<string>;
  "operatorIds"?: Array<string>;
  "serialNumber"?: string;
  "registration"?: string;
  "value"?: string;
  "currency"?: string;
  "locationId"?: string;
}

export interface CampaignFinance extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "transactionId"?: string;
  "committeeIds"?: Array<string>;
  "donorRefs"?: Array<string>;
  "recipientRefs"?: Array<string>;
  "amountRecord"?: CampaignFinanceAmountRecord;
  "transactionDate"?: string;
  "memoed"?: boolean;
  "memoText"?: string;
  "refundOfId"?: string;
  "aggregateAmount"?: CampaignFinanceAggregateAmount;
  "employer"?: string;
  "occupation"?: string;
  "sourceSystemIds"?: Array<CampaignFinanceSourceSystemIdsItem>;
  "entityId"?: string;
  "observationType"?: string;
  "amount"?: string;
  "currency"?: string;
  "valueType"?: string;
  "periodStart"?: string | null;
  "periodEnd"?: string | null;
  "fiscalYear"?: number;
  "fiscalQuarter"?: string;
  "reportedAt"?: string | null;
  "counterpartyIds"?: Array<string>;
  "instrument"?: string;
  "units"?: string;
  "unitPrice"?: string;
  "percentage"?: string;
  "methodology"?: string;
  "qualifications"?: Array<string>;
  "committeeId"?: string;
  "donorId"?: string;
  "recipientId"?: string;
  "filingId"?: string;
  "contributionType"?: string;
  "electionCycle"?: string;
}

export interface Claim extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "proposition"?: string;
  "subjectRefs"?: Array<string>;
  "objectRefs"?: Array<string>;
  "supportingSourceIds"?: Array<string>;
  "reviewIds"?: Array<string>;
  "truthStatus"?: string;
  "verificationMethod"?: Array<string>;
  "derivedFromClaimIds"?: Array<string>;
  "scope"?: string;
  "claim": string;
  "claimantId"?: string;
  "subjectIds"?: Array<string>;
  "predicate"?: string;
  "object"?: unknown;
  "claimType"?: string;
  "polarity"?: string;
  "certainty"?: ClaimCertainty;
  "supportingEvidenceIds"?: Array<string>;
  "contradictingEvidenceIds"?: Array<string>;
  "adjudication"?: string;
}

export interface Concept extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "conceptId"?: string;
  "vocabulary"?: string;
  "namespace"?: string;
  "version"?: string;
  "preferredLabel"?: string;
  "synonyms"?: Array<string>;
  "definitionSourceIds"?: Array<string>;
  "mappingIds"?: Array<string>;
  "term"?: string;
  "definition"?: string;
  "domain"?: string;
  "broaderIds"?: Array<string>;
  "narrowerIds"?: Array<string>;
  "relatedIds"?: Array<string>;
  "examples"?: Array<string>;
  "criteria"?: Array<string>;
}

export interface Contract extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "parentAwardId"?: string;
  "primeAwardId"?: string;
  "partyRoles"?: Array<Record<string, unknown>>;
  "fundingRecords"?: Array<ContractFundingRecordsItem>;
  "lineItems"?: Array<Record<string, unknown>>;
  "clauseIds"?: Array<string>;
  "deliverableIds"?: Array<string>;
  "performanceLocationIds"?: Array<string>;
  "sourceSystemIds"?: Array<ContractSourceSystemIdsItem>;
  "contractId"?: string;
  "awardId"?: string;
  "solicitationId"?: string;
  "vehicleId"?: string;
  "buyerId"?: string;
  "sellerId"?: string;
  "agencyIds"?: Array<string>;
  "vendorIds"?: Array<string>;
  "subcontractorIds"?: Array<string>;
  "scope"?: string;
  "awardType"?: string;
  "competitionType"?: string;
  "signedAt"?: string | null;
  "startAt"?: string | null;
  "endAt"?: string | null;
  "ceilingAmount"?: string;
  "potentialAmount"?: string;
  "obligatedAmount"?: string;
  "outlayAmount"?: string;
  "recognizedRevenue"?: string;
  "currency"?: string;
  "naics"?: Array<string>;
  "psc"?: Array<string>;
  "placeOfPerformance"?: string;
  "modifications"?: Array<Record<string, unknown>>;
}

export interface DatasetManifestCountEntry {
  "key": string;
  "value": number;
}

export interface DatasetManifest extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "datasetId"?: string;
  "datasetVersion"?: string;
  "profile"?: string;
  "profileVersion"?: string;
  "schemaRevision"?: string;
  "documentVersions"?: Array<string>;
  "sourceDatasetIds"?: Array<string>;
  "syncCursor"?: string;
  "syncStatus"?: string;
  "validatedAt"?: string | null;
  "manifestType"?: string;
  "name"?: string;
  "actor"?: string;
  "consumerPath"?: string;
  "targetOptions"?: Array<unknown>;
  "documentIds"?: Array<string>;
  "countsByDtype"?: Array<DatasetManifestCountEntry>;
  "recordCount"?: number;
  "payloadHashAlgorithm"?: string;
  "payloadContentHash"?: string;
  "files"?: Array<Record<string, unknown>>;
  "schemaVersions"?: Array<string>;
  "generatedAt"?: string | null;
}

export interface Education extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "educationType"?: string;
  "credentialId"?: string;
  "programId"?: string;
  "attendanceStatus"?: string;
  "awardedAt"?: string | null;
  "thesisTitle"?: string;
  "advisorIds"?: Array<string>;
  "personId"?: string;
  "institutionId"?: string;
  "degree"?: string;
  "field"?: string;
  "startAt"?: string | null;
  "endAt"?: string | null;
  "graduated"?: boolean;
  "honors"?: Array<string>;
}

export interface Employment extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "roleIds"?: Array<string>;
  "reportsToIds"?: Array<string>;
  "appointmentType"?: string;
  "appointedByIds"?: Array<string>;
  "compensationRecords"?: Array<EmploymentCompensationRecordsItem>;
  "responsibilities"?: Array<string>;
  "terminationReason"?: string;
  "personId"?: string;
  "organizationId"?: string;
  "title"?: string;
  "department"?: string;
  "startAt"?: string | null;
  "endAt"?: string | null;
  "current"?: boolean;
  "employmentType"?: string;
  "locationId"?: string;
}

export interface Entity extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "entityClass"?: string;
  "canonicalName"?: string;
  "sameAsIds"?: Array<string>;
  "duplicateCandidateIds"?: Array<string>;
  "identityConfidence"?: EntityIdentityConfidence;
  "identityKeys"?: Array<EntityIdentityKeysItem>;
  "etype"?: string;
  "eid"?: string;
  "name"?: string;
  "displayName"?: string;
  "legalName"?: string;
  "shortName"?: string;
  "formerNames"?: Array<string>;
  "bio"?: string;
  "payloadJurisdiction"?: string;
  "country"?: string;
  "foundedAt"?: string | null;
  "dissolvedAt"?: string | null;
  "website"?: string;
  "imageUrl"?: string;
  "logoUrl"?: string;
  "payloadExternalIds"?: Array<EntityExternalIdsItem>;
  "contactIds"?: Array<string>;
  "locationIds"?: Array<string>;
}

export interface Event extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "eventTypeId"?: string;
  "parentEventId"?: string;
  "childEventIds"?: Array<string>;
  "participantRoles"?: Array<Record<string, unknown>>;
  "actionRecords"?: Array<Record<string, unknown>>;
  "sourceEventIds"?: Array<string>;
  "recurrenceRule"?: string;
  "resultIds"?: Array<string>;
  "claimIds"?: Array<string>;
  "eventKind"?: string;
  "name"?: string;
  "participantIds"?: Array<string>;
  "participants"?: Array<string>;
  "organizerIds"?: Array<string>;
  "sponsorIds"?: Array<string>;
  "locationIds"?: Array<string>;
  "startAt"?: string | null;
  "endAt"?: string | null;
  "outcome"?: string;
  "agenda"?: Array<string>;
  "decisions"?: Array<string>;
  "actions"?: Array<string>;
  "amount"?: string;
  "currency"?: string;
  "payloadJurisdiction"?: string;
  "caseId"?: string;
  "contractId"?: string;
  "meetingId"?: string;
}

export interface EvidenceRecord extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "subjectIds"?: Array<string>;
  "claimIds"?: Array<string>;
  "exactContent"?: string;
  "normalizedContent"?: string;
  "extractionMethod"?: string;
  "captureActionId"?: string;
  "custodyActions"?: Array<Record<string, unknown>>;
  "hashes"?: Record<string, unknown>;
  "admissibilityStatus"?: string;
  "evidenceId"?: string;
  "sourceId"?: string;
  "sourceUrl"?: string;
  "kind"?: string;
  "role"?: string;
  "claim"?: string;
  "observation"?: string;
  "excerpt"?: string;
  "locator"?: string;
  "page"?: string;
  "section"?: string;
  "payloadCollectedAt"?: string | null;
  "payloadObservedAt"?: string | null;
  "payloadContentHash"?: string;
  "payloadHashAlgorithm"?: string;
  "payloadConfidence"?: EvidenceRecordConfidence;
  "corroborates"?: Array<string>;
  "contradicts"?: Array<string>;
  "payloadChainOfCustody"?: Array<string>;
  "attachments"?: Array<string>;
  "payloadNotes"?: string;
  "metadata"?: Record<string, unknown>;
}

export interface FinancialObservation extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "transactionId"?: string;
  "payerIds"?: Array<string>;
  "payeeIds"?: Array<string>;
  "accountIds"?: Array<string>;
  "amountRecord"?: FinancialObservationAmountRecord;
  "amountBasis"?: string;
  "reportingStandard"?: string;
  "filingIds"?: Array<string>;
  "sourceTransactionIds"?: Array<string>;
  "memoed"?: boolean;
  "refunded"?: boolean;
  "entityId"?: string;
  "observationType"?: string;
  "amount"?: string;
  "currency"?: string;
  "valueType"?: string;
  "periodStart"?: string | null;
  "periodEnd"?: string | null;
  "fiscalYear"?: number;
  "fiscalQuarter"?: string;
  "reportedAt"?: string | null;
  "counterpartyIds"?: Array<string>;
  "instrument"?: string;
  "units"?: string;
  "unitPrice"?: string;
  "percentage"?: string;
  "methodology"?: string;
  "qualifications"?: Array<string>;
}

export interface Grant extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "awardNumber"?: string;
  "primeRecipientId"?: string;
  "subrecipientIds"?: Array<string>;
  "programId"?: string;
  "fundingRecords"?: Array<GrantFundingRecordsItem>;
  "assistanceListingIds"?: Array<string>;
  "matchingAmount"?: GrantMatchingAmount;
  "performanceLocationIds"?: Array<string>;
  "objectiveIds"?: Array<string>;
  "reportIds"?: Array<string>;
  "contractId"?: string;
  "awardId"?: string;
  "solicitationId"?: string;
  "vehicleId"?: string;
  "buyerId"?: string;
  "sellerId"?: string;
  "agencyIds"?: Array<string>;
  "vendorIds"?: Array<string>;
  "subcontractorIds"?: Array<string>;
  "scope"?: string;
  "awardType"?: string;
  "competitionType"?: string;
  "signedAt"?: string | null;
  "startAt"?: string | null;
  "endAt"?: string | null;
  "ceilingAmount"?: string;
  "potentialAmount"?: string;
  "obligatedAmount"?: string;
  "outlayAmount"?: string;
  "recognizedRevenue"?: string;
  "currency"?: string;
  "naics"?: Array<string>;
  "psc"?: Array<string>;
  "placeOfPerformance"?: string;
  "modifications"?: Array<Record<string, unknown>>;
  "grantorId"?: string;
  "recipientIds"?: Array<string>;
  "program"?: string;
  "assistanceListing"?: string;
  "matchingRequired"?: boolean;
}

export interface LegalCase extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "courtId"?: string;
  "docketId"?: string;
  "partyRoles"?: Array<Record<string, unknown>>;
  "relatedCaseIds"?: Array<string>;
  "motionIds"?: Array<string>;
  "orderIds"?: Array<string>;
  "opinionIds"?: Array<string>;
  "appealCaseIds"?: Array<string>;
  "disposition"?: string;
  "precedentialStatus"?: string;
  "caseNumber"?: string;
  "caseName"?: string;
  "court"?: string;
  "payloadJurisdiction"?: string;
  "judgeIds"?: Array<string>;
  "partyIds"?: Array<string>;
  "plaintiffIds"?: Array<string>;
  "defendantIds"?: Array<string>;
  "attorneyIds"?: Array<string>;
  "caseType"?: string;
  "claims"?: Array<string>;
  "filedAt"?: string | null;
  "closedAt"?: string | null;
  "docketEntries"?: Array<Record<string, unknown>>;
  "outcome"?: string;
  "citation"?: string;
}

export interface LobbyingFiling extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "filingSystem"?: string;
  "registrantRefs"?: Array<string>;
  "clientRefs"?: Array<string>;
  "lobbyistRefs"?: Array<string>;
  "coveredOfficialIds"?: Array<string>;
  "issueCodes"?: Array<string>;
  "amountRecords"?: Array<LobbyingFilingAmountRecordsItem>;
  "foreignEntityIds"?: Array<string>;
  "priorFilingId"?: string;
  "amendsFilingId"?: string;
  "sourceFilingUrl"?: string;
  "filingId"?: string;
  "registrantId"?: string;
  "clientId"?: string;
  "lobbyistIds"?: Array<string>;
  "governmentEntities"?: Array<string>;
  "issues"?: Array<string>;
  "specificIssues"?: Array<string>;
  "income"?: string;
  "expenses"?: string;
  "currency"?: string;
  "periodStart"?: string | null;
  "periodEnd"?: string | null;
  "filedAt"?: string | null;
  "filingType"?: string;
  "amendment"?: boolean;
  "termination"?: boolean;
}

export interface Meeting extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "meetingType"?: string;
  "chairIds"?: Array<string>;
  "attendeeRoles"?: Array<Record<string, unknown>>;
  "agendaItemIds"?: Array<string>;
  "minuteFileIds"?: Array<string>;
  "decisionIds"?: Array<string>;
  "actionItemIds"?: Array<string>;
  "parentMeetingId"?: string;
  "recurrenceRule"?: string;
  "eventKind"?: string;
  "name"?: string;
  "participantIds"?: Array<string>;
  "participants"?: Array<string>;
  "organizerIds"?: Array<string>;
  "sponsorIds"?: Array<string>;
  "locationIds"?: Array<string>;
  "startAt"?: string | null;
  "endAt"?: string | null;
  "outcome"?: string;
  "agenda"?: Array<string>;
  "decisions"?: Array<string>;
  "actions"?: Array<string>;
  "amount"?: string;
  "currency"?: string;
  "payloadJurisdiction"?: string;
  "caseId"?: string;
  "contractId"?: string;
  "meetingId"?: string;
}

export interface Observation extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "subjectRefs"?: Array<string>;
  "observedProperty"?: string;
  "rawValue"?: unknown;
  "actionId"?: string;
  "observerRefs"?: Array<string>;
  "uncertainty"?: string;
  "observerId"?: string;
  "subjectId"?: string;
  "observationType"?: string;
  "value"?: unknown;
  "unit"?: string;
  "method"?: string;
  "instrument"?: string;
  "payloadObservedAt"?: string | null;
}

export interface Ownership extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "ownerRefs"?: Array<string>;
  "ownedRefs"?: Array<string>;
  "ownershipInstrument"?: string;
  "percentageBasis"?: string;
  "votingPercentage"?: string;
  "economicPercentage"?: string;
  "valueRecord"?: OwnershipValueRecord;
  "acquisitionEventId"?: string;
  "disposalEventId"?: string;
  "ownerId"?: string;
  "assetId"?: string;
  "ownershipType"?: string;
  "percentage"?: string;
  "units"?: string;
  "startAt"?: string | null;
  "endAt"?: string | null;
  "beneficial"?: boolean;
  "direct"?: boolean;
}

export interface Policy extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "policyVersion"?: string;
  "parentPolicyId"?: string;
  "authorityIds"?: Array<string>;
  "implementationIds"?: Array<string>;
  "textFileIds"?: Array<string>;
  "sectionIds"?: Array<string>;
  "adoptedAt"?: string | null;
  "repealedAt"?: string | null;
  "supersededById"?: string;
  "complianceRequirementIds"?: Array<string>;
  "policyId"?: string;
  "name"?: string;
  "issuerId"?: string;
  "payloadJurisdiction"?: string;
  "policyType"?: string;
  "text"?: string;
  "effectiveAt"?: string | null;
  "payloadExpiresAt"?: string | null;
  "affectedIds"?: Array<string>;
}

export interface Procurement extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "procurementStage"?: string;
  "noticeId"?: string;
  "parentAwardId"?: string;
  "partyRoles"?: Array<Record<string, unknown>>;
  "fundingRecords"?: Array<ProcurementFundingRecordsItem>;
  "lineItems"?: Array<Record<string, unknown>>;
  "competitionExceptions"?: Array<string>;
  "evaluationCriteria"?: Array<string>;
  "sourceSystemIds"?: Array<ProcurementSourceSystemIdsItem>;
  "contractId"?: string;
  "awardId"?: string;
  "solicitationId"?: string;
  "vehicleId"?: string;
  "buyerId"?: string;
  "sellerId"?: string;
  "agencyIds"?: Array<string>;
  "vendorIds"?: Array<string>;
  "subcontractorIds"?: Array<string>;
  "scope"?: string;
  "awardType"?: string;
  "competitionType"?: string;
  "signedAt"?: string | null;
  "startAt"?: string | null;
  "endAt"?: string | null;
  "ceilingAmount"?: string;
  "potentialAmount"?: string;
  "obligatedAmount"?: string;
  "outlayAmount"?: string;
  "recognizedRevenue"?: string;
  "currency"?: string;
  "naics"?: Array<string>;
  "psc"?: Array<string>;
  "placeOfPerformance"?: string;
  "modifications"?: Array<Record<string, unknown>>;
}

export interface Product extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "supplierIds"?: Array<string>;
  "versionIds"?: Array<string>;
  "componentIds"?: Array<string>;
  "dependencyIds"?: Array<string>;
  "deploymentIds"?: Array<string>;
  "sbomFileIds"?: Array<string>;
  "supportEndAt"?: string | null;
  "pricingRecords"?: Array<ProductPricingRecordsItem>;
  "securityAdvisoryIds"?: Array<string>;
  "etype"?: string;
  "eid"?: string;
  "name"?: string;
  "displayName"?: string;
  "legalName"?: string;
  "shortName"?: string;
  "formerNames"?: Array<string>;
  "bio"?: string;
  "payloadJurisdiction"?: string;
  "country"?: string;
  "foundedAt"?: string | null;
  "dissolvedAt"?: string | null;
  "website"?: string;
  "imageUrl"?: string;
  "logoUrl"?: string;
  "payloadExternalIds"?: Array<ProductExternalIdsItem>;
  "contactIds"?: Array<string>;
  "locationIds"?: Array<string>;
  "manufacturerId"?: string;
  "vendorIds"?: Array<string>;
  "productType"?: string;
  "model"?: string;
  "versionName"?: string;
  "releaseDate"?: string | null;
  "endOfLife"?: string | null;
  "features"?: Array<string>;
  "capabilities"?: Array<string>;
  "integrations"?: Array<string>;
  "customers"?: Array<string>;
  "license"?: string;
  "pricing"?: Record<string, unknown>;
  "technical"?: Record<string, unknown>;
}

export interface ResearchNode extends Document {
  "description"?: string;
  "status": ResearchNodeStatus;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "objective": string;
  "instructions"?: string;
  "inputIds"?: Array<string>;
  "targetIds"?: Array<string>;
  "actorIds"?: Array<string>;
  "actorSelectionRules"?: Array<Record<string, unknown>>;
  "outputIds"?: Array<string>;
  "artifactIds"?: Array<string>;
  "childIds"?: Array<string>;
  "dependencyIds"?: Array<string>;
  "runIds"?: Array<string>;
  "currentActorId"?: string;
  "currentRunId"?: string;
  "limits"?: ResearchNodeLimits;
  "stop"?: ResearchNodeStop;
  "counters"?: ResearchNodeCounters;
  "history"?: Array<ResearchNodeHistoryItem>;
  "nodeCreatedAt"?: string | null;
  "startedAt"?: string | null;
  "completedAt"?: string | null;
  "lastError"?: string;
  "pausedReason"?: string;
}

export interface ResearchPass extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "parentPassId"?: string;
  "childPassIds"?: Array<string>;
  "targetIds"?: Array<string>;
  "actionRecords"?: Array<Record<string, unknown>>;
  "claimIds"?: Array<string>;
  "outputIds"?: Array<string>;
  "metrics"?: unknown;
  "terminationReason"?: string;
  "schemaRevision"?: string;
  "researchQuestion"?: string;
  "method"?: string;
  "classificationRules"?: Array<string>;
  "findingIds"?: Array<string>;
  "findings"?: Array<Record<string, unknown>>;
  "supportingRecordIds"?: Array<string>;
  "counterevidenceIds"?: Array<string>;
  "unresolvedTargetIds"?: Array<string>;
  "sourceIds"?: Array<string>;
  "agentIdentity"?: string;
  "narrativeRole"?: string;
  "startedAt"?: string | null;
  "completedAt"?: string | null;
  "iteration"?: number;
}

export interface SocialMediaPost extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "authorRefs"?: Array<string>;
  "conversationId"?: string;
  "parentPostId"?: string;
  "attachmentIds"?: Array<string>;
  "captureIds"?: Array<string>;
  "engagementObservationIds"?: Array<string>;
  "payloadContentHash"?: string;
  "content"?: string;
  "platform"?: string;
  "user"?: string;
  "userId"?: string;
  "isReply"?: boolean;
  "media"?: Array<string>;
  "messageId"?: string;
  "replyTo"?: string;
  "group"?: string;
  "channel"?: string;
  "threadId"?: string;
  "mentions"?: Array<string>;
  "reactions"?: Array<Record<string, unknown>>;
  "links"?: Array<string>;
  "postedAt"?: string | null;
  "editedAt"?: string | null;
  "payloadDeleted"?: boolean;
  "payloadVisibility"?: string;
  "replies"?: Array<Record<string, unknown>>;
  "replyCount"?: number;
  "repostCount"?: number;
  "likeCount"?: number;
  "viewCount"?: number;
  "url"?: string;
  "payloadTags"?: Array<string>;
  "title"?: string;
  "quotePostId"?: string;
}

export interface Source extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "sourceTypeId"?: string;
  "publisherId"?: string;
  "authorIds"?: Array<string>;
  "captureActionId"?: string;
  "originalFileIds"?: Array<string>;
  "archiveIds"?: Array<string>;
  "termsOfUse"?: string;
  "accessRestrictions"?: Array<string>;
  "supersedesSourceIds"?: Array<string>;
  "sourceId"?: string;
  "kind"?: string;
  "type"?: string;
  "sensor"?: string;
  "name"?: string;
  "title"?: string;
  "publisher"?: string;
  "author"?: string;
  "organization"?: string;
  "uri"?: string;
  "url"?: string;
  "archiveUrl"?: string;
  "publishedAt"?: string | null;
  "retrievedAt"?: string | null;
  "accessedAt"?: string | null;
  "payloadLanguage"?: string;
  "payloadJurisdiction"?: string;
  "medium"?: string;
  "credibility"?: SourceCredibility;
  "reliability"?: SourceReliability;
  "authenticity"?: SourceAuthenticity;
  "independence"?: SourceIndependence;
  "accessMethod"?: string;
  "query"?: string;
  "requestId"?: string;
  "responseStatus"?: number;
  "payloadContentHash"?: string;
  "payloadHashAlgorithm"?: string;
  "license"?: string;
  "quote"?: string;
  "locator"?: string;
  "page"?: string;
  "section"?: string;
  "payloadNotes"?: string;
  "metadata"?: Record<string, unknown>;
}

export interface Task extends Document {
  "description"?: string;
  "status"?: string;
  "contentValidFrom"?: string | null;
  "contentValidUntil"?: string | null;
  "parentTaskId"?: string;
  "dependencyTaskIds"?: Array<string>;
  "actorIds"?: Array<string>;
  "skillIds"?: Array<string>;
  "toolIds"?: Array<string>;
  "inputIds"?: Array<string>;
  "attemptIds"?: Array<string>;
  "schedule"?: string;
  "startedAt"?: string | null;
  "resultSummary"?: string;
  "errorIds"?: Array<string>;
  "taskType"?: string;
  "subjectIds"?: Array<string>;
  "assigneeIds"?: Array<string>;
  "priority"?: string;
  "dueAt"?: string | null;
  "completedAt"?: string | null;
  "instructions"?: string;
  "resultIds"?: Array<string>;
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
