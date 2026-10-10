(spec-library "org.starintel/core@1"
  (:version "0.10.1")

  (scalar document-id
    (:base string
     :pattern "^[A-Za-z0-9._~:/+-]{1,512}$"))

  (scalar unix-time
    (:base integer
     :minimum 0))

  (scalar confidence-score
    (:base decimal
     :minimum 0
     :maximum 1
     :scale 4))

  (scalar latitude
    (:base decimal
     :minimum -90
     :maximum 90
     :scale 8))

  (scalar longitude
    (:base decimal
     :minimum -180
     :maximum 180
     :scale 8))

  (scalar port-number
    (:base integer
     :minimum 0
     :maximum 65535))

  (scalar asn-number
    (:base integer
     :minimum 0
     :maximum 4294967295))

  (scalar uri
    (:base string
     :format uri))

  (scalar email-address
    (:base string
     :pattern "^[^\\s@]+@[^\\s@]+$"))

  (scalar phone-number
    (:base string
     :pattern "^\\+?[0-9(). -]{3,32}$"))

  (enum sensitivity
    (public internal confidential restricted secret unknown))

  (enum visibility
    (public private shared inherited unknown))

  (enum collection-status
    (raw normalized enriched verified disputed stale deleted unknown))

  (enum source-kind
    (api web file database message human sensor inference import export unknown))

  (enum hash-algorithm
    (sha256 sha512 blake2b blake3 md5 unknown))

  (enum relation-direction
    (directed symmetric inverse unknown))

  (enum target-state
    (pending scheduled running completed failed cancelled paused unknown))

  ;; Mission and spatial-operation vocabulary is canonical StarIntel data.
  ;; UI state, transport state, and inferred identity remain downstream concerns.
  (enum mission-state
    (draft ready running paused completed failed cancelled archived unknown))

  (enum mission-target-state
    (pending active completed failed skipped cancelled unknown))

  (enum route-mode
    (walk bicycle vehicle transit air marine mixed unknown))

  (enum geofence-transition
    (enter exit dwell intersect unknown))

  (enum encounter-kind
    (co-observed proximity radio visual manual derived unknown))

  (enum spatial-query-mode
    (bounding-box intersects within contains nearest))

  (enum map-layer-kind
    (documents heatmap route geofence encounters custom unknown))

  (scalar distance-meters
    (:base decimal
     :minimum 0
     :scale 3))

  (enum geo-geometry-type
    (point line-string polygon multi-point multi-line-string multi-polygon
     geometry-collection))

  (document document
    (:persistence persistent)
    (id document-id :required)
    (rev string :optional)
    (dataset string :required)
    (dtype string :required)
    (schemaVersion string :required)
    (externalIds map :optional)
    (aliases (list string) :optional)
    (sources (list reference) :optional)
    (sourceUrls (list uri) :optional)
    (sourceRecordIds (list string) :optional)
    (sourceKinds (list source-kind) :optional)
    (sourceLicense string :optional)
    (sourceTerms uri :optional)
    (sourceRetrievedAt unix-time :optional)
    (collectedAt unix-time :optional)
    (observedAt unix-time :optional)
    (firstSeenAt unix-time :optional)
    (lastSeenAt unix-time :optional)
    (createdAt unix-time :optional)
    (updatedAt unix-time :optional)
    (validFrom unix-time :optional)
    (validUntil unix-time :optional)
    (expiresAt unix-time :optional)
    (collector string :optional)
    (collectorVersion string :optional)
    (collectionMethod string :optional)
    (collectionStatus collection-status :optional)
    (runId string :optional)
    (correlationId string :optional)
    (causationId string :optional)
    (parentId document-id :optional)
    (rootId document-id :optional)
    (confidence confidence-score :optional)
    (confidenceBasis string :optional)
    (qualityScore confidence-score :optional)
    (completenessScore confidence-score :optional)
    (verificationStatus string :optional)
    (verifiedAt unix-time :optional)
    (verifiedBy string :optional)
    (provenance map :optional)
    (chainOfCustody (list map) :optional)
    (transformHistory (list map) :optional)
    (labels (list string) :optional)
    (tags (list string) :optional)
    (topics (list string) :optional)
    (language string :optional)
    (jurisdiction string :optional)
    (countryCode string :optional)
    (regionCode string :optional)
    (timezone string :optional)
    (sensitivity sensitivity :optional)
    (visibility visibility :optional)
    (owner string :optional)
    (accessControl map :optional)
    (legalBasis string :optional)
    (retentionPolicy string :optional)
    (contentType string :optional)
    (encoding string :optional)
    (sizeBytes integer :optional)
    (contentHash string :optional)
    (hashAlgorithm hash-algorithm :optional)
    (normalizedHash string :optional)
    (raw map :optional)
    (rawContent string :optional)
    (notes string :optional)
    (deleted boolean :optional)
    (tombstoneReason string :optional)
    (extensions map :optional))

  (document person
    (:extends document
     :persistence persistent)
    (fname string :optional)
    (mname string :optional)
    (lname string :optional)
    (fullName string :optional)
    (displayName string :optional)
    (prefix string :optional)
    (suffix string :optional)
    (pronouns string :optional)
    (bio string :optional)
    (dob iso-date :optional)
    (dateOfDeath iso-date :optional)
    (age integer :optional)
    (gender string :optional)
    (nationality (list string) :optional)
    (citizenship (list string) :optional)
    (occupation (list string) :optional)
    (employer (list reference) :optional)
    (education (list map) :optional)
    (skills (list string) :optional)
    (interests (list string) :optional)
    (region string :optional)
    (addresses (list reference) :optional)
    (emails (list reference) :optional)
    (phones (list reference) :optional)
    (accounts (list reference) :optional)
    (images (list reference) :optional)
    (identifiers (list reference) :optional)
    (misc (list map) :optional)
    (etype string :optional)
    (eid string :optional))

  (document person-identifier
    (:extends document
     :persistence persistent)
    (person reference :required)
    (scheme string :required)
    (value string :required)
    (normalizedValue string :optional)
    (issuer string :optional)
    (primary boolean :optional :default nil)
    (sensitive boolean :optional :default t)
    (sourceDocument reference :optional))

  (document org
    (:extends document
     :persistence persistent)
    (reg string :optional)
    (registrationNumbers map :optional)
    (name string :required)
    (legalName string :optional)
    (alternateNames (list string) :optional)
    (bio string :optional)
    (description string :optional)
    (organizationType string :optional)
    (industry (list string) :optional)
    (foundedDate iso-date :optional)
    (dissolvedDate iso-date :optional)
    (status string :optional)
    (country string :optional)
    (jurisdictions (list string) :optional)
    (headquarters reference :optional)
    (addresses (list reference) :optional)
    (website uri :optional)
    (domains (list reference) :optional)
    (emails (list reference) :optional)
    (phones (list reference) :optional)
    (parentOrg reference :optional)
    (subsidiaries (list reference) :optional)
    (officers (list reference) :optional)
    (employees (list reference) :optional)
    (owners (list reference) :optional)
    (beneficialOwners (list reference) :optional)
    (identifiers map :optional)
    (etype string :optional)
    (eid string :optional))

  (document relation
    (:extends document
     :persistence persistent)
    (source reference :required)
    (destination reference :required)
    (predicate string :required)
    (direction relation-direction :optional)
    (inversePredicate string :optional)
    (note string :optional)
    (evidence (list reference) :optional)
    (weight decimal :optional)
    (validAt unix-time :optional)
    (endedAt unix-time :optional))

  (document domain
    (:extends document
     :persistence persistent)
    (name string :required)
    (unicodeName string :optional)
    (punycodeName string :optional)
    (recordType string :optional)
    (record string :optional)
    (resolvedAddresses (list reference) :optional)
    (dnsRecords (list map) :optional)
    (nameservers (list string) :optional)
    (mxRecords (list map) :optional)
    (txtRecords (list string) :optional)
    (registrar string :optional)
    (registrant reference :optional)
    (whois map :optional)
    (registeredAt unix-time :optional)
    (renewedAt unix-time :optional)
    (registryExpiresAt unix-time :optional)
    (dnssec boolean :optional)
    (statusCodes (list string) :optional))

  (document service
    (:extends document
     :persistence persistent)
    (host reference :required)
    (port port-number :required)
    (transport string :optional)
    (name string :optional)
    (product string :optional)
    (vendor string :optional)
    (version string :optional)
    (protocol string :optional)
    (scheme string :optional)
    (banner string :optional)
    (state string :optional)
    (tls boolean :optional)
    (tlsCertificate reference :optional)
    (cpe (list string) :optional)
    (fingerprints map :optional)
    (firstOpenAt unix-time :optional)
    (lastOpenAt unix-time :optional))

  (document port
    (:extends document
     :persistence persistent)
    (number port-number :required)
    (transport string :optional)
    (protocol string :optional)
    (service reference :optional)
    (state string :optional)
    (reason string :optional)
    (banner string :optional)
    (host reference :optional)
    (firstOpenAt unix-time :optional)
    (lastOpenAt unix-time :optional))

  (document network
    (:extends document
     :persistence persistent)
    (org reference :optional)
    (subnet string :required)
    (asn asn-number :optional)
    (asnName string :optional)
    (rir string :optional)
    (country string :optional)
    (netname string :optional)
    (description string :optional)
    (announcedPrefixes (list string) :optional)
    (upstreams (list asn-number) :optional)
    (peers (list asn-number) :optional))

  (document asn
    (:extends document
     :persistence persistent)
    (number asn-number :required)
    (name string :optional)
    (org reference :optional)
    (country string :optional)
    (rir string :optional)
    (registry string :optional)
    (prefixes (list string) :optional)
    (upstreams (list asn-number) :optional)
    (peers (list asn-number) :optional))

  (document host
    (:extends document
     :persistence persistent)
    (hostname string :optional)
    (hostnames (list string) :optional)
    (ip string :required)
    (ipVersion integer :optional)
    (mac string :optional)
    (os string :optional)
    (osVersion string :optional)
    (deviceType string :optional)
    (vendor string :optional)
    (network reference :optional)
    (asn asn-number :optional)
    (geo reference :optional)
    (ports (list reference) :optional)
    (services (list reference) :optional)
    (domains (list reference) :optional)
    (certificates (list reference) :optional)
    (cloud map :optional)
    (virtualization string :optional)
    (alive boolean :optional)
    (lastProbedAt unix-time :optional))

  (document url
    (:extends document
     :persistence persistent)
    (url uri :required)
    (scheme string :optional)
    (username string :optional)
    (host string :optional)
    (port port-number :optional)
    (path string :optional)
    (query string :optional)
    (fragment string :optional)
    (canonicalUrl uri :optional)
    (finalUrl uri :optional)
    (statusCode integer :optional)
    (method string :optional)
    (requestHeaders map :optional)
    (responseHeaders map :optional)
    (content string :optional)
    (contentTitle string :optional)
    (contentLength integer :optional)
    (technologies (list string) :optional)
    (redirectChain (list uri) :optional)
    (screenshot reference :optional)
    (fetchedAt unix-time :optional))

  (document breach
    (:extends document
     :persistence persistent)
    (name string :optional)
    (total integer :optional)
    (description string :optional)
    (url uri :optional)
    (breachedAt unix-time :optional)
    (publishedAt unix-time :optional)
    (dataClasses (list string) :optional)
    (affectedOrganizations (list reference) :optional)
    (affectedIdentifiers (list string) :optional)
    (verified boolean :optional)
    (sensitive boolean :optional))

  (document email
    (:extends document
     :persistence persistent)
    (address email-address :required)
    (user string :optional)
    (domain string :optional)
    (displayName string :optional)
    (password string :optional)
    (passwordHash string :optional)
    (hashType string :optional)
    (breaches (list reference) :optional)
    (deliverable boolean :optional)
    (disposable boolean :optional)
    (roleAccount boolean :optional)
    (catchAll boolean :optional)
    (mxValid boolean :optional)
    (provider string :optional)
    (lastVerifiedAt unix-time :optional))

  (document email-message
    (:extends document
     :persistence persistent)
    (messageId string :optional)
    (threadId string :optional)
    (subject string :optional)
    (body string :optional)
    (bodyHtml string :optional)
    (to (list email-address) :optional)
    (from email-address :optional)
    (replyTo email-address :optional)
    (cc (list email-address) :optional)
    (bcc (list email-address) :optional)
    (headers map :optional)
    (attachments (list reference) :optional)
    (sentAt unix-time :optional)
    (receivedAt unix-time :optional)
    (inReplyTo string :optional)
    (references (list string) :optional)
    (mailbox string :optional)
    (flags (list string) :optional))

  (document user
    (:extends document
     :persistence persistent)
    (url uri :optional)
    (username string :required)
    (displayName string :optional)
    (name string :optional)
    (platform string :required)
    (platformUserId string :optional)
    (bio string :optional)
    (avatar reference :optional)
    (banner reference :optional)
    (createdOnPlatformAt unix-time :optional)
    (followersCount integer :optional)
    (followingCount integer :optional)
    (postCount integer :optional)
    (verified boolean :optional)
    (private boolean :optional)
    (suspended boolean :optional)
    (location string :optional)
    (website uri :optional)
    (emails (list reference) :optional)
    (phones (list reference) :optional)
    (misc (list map) :optional))

  (document phone
    (:extends document
     :persistence persistent)
    (number phone-number :required)
    (e164 string :optional)
    (nationalNumber string :optional)
    (extension string :optional)
    (carrier string :optional)
    (status string :optional)
    (phoneType string :optional)
    (lineType string :optional)
    (valid boolean :optional)
    (reachable boolean :optional)
    (ported boolean :optional)
    (location string :optional)
    (lastVerifiedAt unix-time :optional))

  (document geo
    (:extends document
     :persistence persistent)
    (geometryType geo-geometry-type :required)
    (coordinateReferenceSystem string :optional :default "EPSG:4326")
    (boundingBox (list decimal) :optional)
    (accuracyMeters decimal :optional)
    (geohash string :optional)
    (placeName string :optional)
    (placeKind string :optional))

  (document geo-point
    (:extends geo
     :persistence persistent)
    (longitude longitude :required)
    (latitude latitude :required)
    (altitudeMeters decimal :optional))

  (document geo-line-string
    (:extends geo
     :persistence persistent)
    (points (list reference) :required))

  (document geo-polygon
    (:extends geo
     :persistence persistent)
    (rings (list reference) :required))

  (document geo-multi-point
    (:extends geo
     :persistence persistent)
    (points (list reference) :required))

  (document geo-multi-line-string
    (:extends geo
     :persistence persistent)
    (lines (list reference) :required))

  (document geo-multi-polygon
    (:extends geo
     :persistence persistent)
    (polygons (list reference) :required))

  (document geo-geometry-collection
    (:extends geo
     :persistence persistent)
    (geometries (list reference) :required))

  (document location
    (:extends document
     :persistence persistent)
    (name string :optional)
    (geometry reference :required)
    (address reference :optional)
    (locationType string :optional))

  (document address
    (:extends document
     :persistence persistent)
    (formatted string :optional)
    (street string :optional)
    (street2 string :optional)
    (unit string :optional)
    (city string :optional)
    (county string :optional)
    (state string :optional)
    (postal string :optional)
    (country string :optional)
    (addressType string :optional)
    (poBox string :optional)
    (building string :optional)
    (floor string :optional)
    (deliveryPoint string :optional)
    (geometry reference :optional)
    (validated boolean :optional)
    (validationProvider string :optional))

  ;; A mission is an operator-authored plan. It references canonical evidence
  ;; and spatial records; it does not turn proximity or co-observation into
  ;; identity, ownership, residence, or affiliation.
  (document mission
    (:extends document
     :persistence persistent)
    (name string :required)
    (objective string :required)
    (state mission-state :required)
    (scope reference :optional)
    (area reference :optional)
    (route reference :optional)
    (targets (list reference) :optional)
    (geofences (list reference) :optional)
    (assignedActors (list reference) :optional)
    (parentMission reference :optional)
    (startsAt unix-time :optional)
    (endsAt unix-time :optional)
    (outputDataset string :optional)
    (constraints map :optional)
    (budget map :optional)
    (statusReason string :optional))

  (document mission-target
    (:extends document
     :persistence persistent)
    (mission reference :required)
    (subject reference :required)
    (state mission-target-state :required)
    (objective string :optional)
    (location reference :optional)
    (geofence reference :optional)
    (routeStop integer :optional)
    (priority integer :optional)
    (assignedActor reference :optional)
    (requiredCapabilities (list string) :optional)
    (notBefore unix-time :optional)
    (deadline unix-time :optional)
    (options map :optional)
    (resultRefs (list reference) :optional))

  ;; Routes point at canonical line geometry. Waypoints are canonical spatial
  ;; records, not an alternate private coordinate model.
  (document route
    (:extends document
     :persistence persistent)
    (name string :optional)
    (geometry reference :required)
    (origin reference :optional)
    (destination reference :optional)
    (waypoints (list reference) :optional)
    (mode route-mode :optional)
    (distanceMeters distance-meters :optional)
    (estimatedDurationSeconds integer :optional)
    (actualDurationSeconds integer :optional)
    (plannedAt unix-time :optional)
    (startedAt unix-time :optional)
    (endedAt unix-time :optional)
    (routingProvider string :optional)
    (constraints map :optional))

  (document geofence
    (:extends document
     :persistence persistent)
    (name string :optional)
    (geometry reference :required)
    (transitions (list geofence-transition) :required)
    (mission reference :optional)
    (subjects (list reference) :optional)
    (activeFrom unix-time :optional)
    (activeUntil unix-time :optional)
    (dwellSeconds integer :optional)
    (enabled boolean :optional :default t)
    (policy map :optional))

  ;; Encounter means bounded co-observation/proximity evidence only.
  ;; Identity and relationship claims require separate evidence-backed records.
  (document encounter
    (:extends document
     :persistence persistent)
    (participants (list reference) :required)
    (kind encounter-kind :required)
    (location reference :optional)
    (geometry reference :optional)
    (startedAt unix-time :required)
    (endedAt unix-time :optional)
    (minimumDistanceMeters distance-meters :optional)
    (observations (list reference) :optional)
    (evidence (list reference) :optional)
    (sourceRunIds (list string) :optional))

  ;; Map layers are durable operator/query projections. Canonical feature
  ;; documents remain authoritative and can rebuild a layer at any time.
  (document map-layer
    (:extends document
     :persistence persistent)
    (name string :required)
    (kind map-layer-kind :required)
    (sourceDataset string :optional)
    (query map :optional)
    (features (list reference) :optional)
    (style map :optional)
    (visible boolean :optional :default t)
    (minimumZoom integer :optional)
    (maximumZoom integer :optional)
    (readOnly boolean :optional :default t))

  (document message
    (:extends document
     :persistence persistent)
    (message string :required)
    (platform string :required)
    (user reference :optional)
    (isReply boolean :optional)
    (media (list reference) :optional)
    (messageId string :optional)
    (replyTo reference :optional)
    (threadId string :optional)
    (group string :optional)
    (channel string :optional)
    (mentions (list reference) :optional)
    (reactions map :optional)
    (edited boolean :optional)
    (editedAt unix-time :optional)
    (sentAt unix-time :optional)
    (deletedAt unix-time :optional))

  (document socialmpost
    (:extends document
     :persistence persistent)
    (content string :required)
    (user reference :optional)
    (platform string :optional)
    (platformPostId string :optional)
    (replies (list reference) :optional)
    (media (list reference) :optional)
    (replyCount integer :optional)
    (repostCount integer :optional)
    (likeCount integer :optional)
    (viewCount integer :optional)
    (quoteCount integer :optional)
    (bookmarkCount integer :optional)
    (url uri :optional)
    (links (list uri) :optional)
    (hashtags (list string) :optional)
    (mentions (list reference) :optional)
    (title string :optional)
    (group string :optional)
    (replyTo reference :optional)
    (conversationId string :optional)
    (publishedAt unix-time :optional)
    (editedAt unix-time :optional)
    (sensitive boolean :optional))

  ;; Research operations are executable planning state, distinct from real-world
  ;; intelligence evidence, missions, and actor scheduler targets. Transient
  ;; operation components are embedded records, never standalone corpus dtypes.
  ;; Operation invariants: nonempty mission and phases; unique component IDs;
  ;; acyclic phase dependencies; all local cross-references resolve; operation
  ;; outOfScope overrides phase inScope; completed phases require evidence;
  ;; completed operations contain only completed or skipped phases.
  (enum operation-role
    (collection working derived publication reference archive))

  (enum operation-access
    (read append write read-write))

  (enum operation-category
    (actor software hardware device source dataset schema protocol infrastructure research))

  (enum operation-capability-status
    (required missing planned in-progress available resolved waived))

  (enum operation-status
    (draft planned active blocked suspended completed aborted archived))

  (enum operation-assignment-status
    (planned assigned active completed blocked released))

  (enum operation-post-action-status
    (planned ready running completed failed skipped))

  (enum operation-state
    (planned ready active blocked awaiting-review completed skipped failed aborted))

  (document operation-condition
    (:persistence transient)
    (conditionId string :optional)
    (kind string :required)
    (predicate string :optional)
    (subject string :optional)
    (object string :optional)
    (expression string :optional)
    (required boolean :optional)
    (metadata map :optional))

  (document operation-target-policy
    (:persistence transient)
    (allowedDtypes (list string) :optional)
    (allowedTargetTypes (list string) :optional)
    (allowedRoles (list string) :optional)
    (selectors (list map) :optional))

  (document operation-target-bindings
    (:persistence transient)
    (primary (list string) :optional)
    (supporting (list string) :optional)
    (derived (list string) :optional)
    (excluded (list string) :optional))

  (document operation-dataset-binding
    (:persistence transient)
    (bindingId string :required)
    (dataset string :required)
    (role operation-role :required)
    (access operation-access :required)
    (phases (list string) :optional)
    (purpose string :optional))

  (document operation-capability-gap
    (:persistence transient)
    (capabilityId string :required)
    (category operation-category :required)
    (description string :required)
    (requiredBy (list string) :optional)
    (blocking boolean :required)
    (status operation-capability-status :required)
    (capabilityRef string :optional)
    (resolutionRef string :optional)
    (owner string :optional)
    (metadata map :optional))

  (document operation-assignment
    (:persistence transient)
    (assignmentId string :required)
    (agentId string :optional)
    (actorId string :optional)
    (phaseIds (list string) :required)
    (role string :optional)
    (status operation-assignment-status :required)
    (metadata map :optional))

  (document operation-post-action
    (:persistence transient)
    (actionId string :required)
    (actionType string :required)
    (condition operation-condition :optional)
    (targetIds (list string) :optional)
    (datasetBindingIds (list string) :optional)
    (status operation-post-action-status :required)
    (config map :optional))

  (document operation-phase
    (:persistence transient)
    (phaseId string :required)
    (title string :optional)
    (objective string :required)
    (state operation-state :required)
    (dependsOn (list string) :optional)
    (entryConditions (list operation-condition) :optional)
    (exitConditions (list operation-condition) :optional)
    (inScope (list string) :optional)
    (outOfScope (list string) :optional)
    (targetPolicy operation-target-policy :optional)
    (targetIds (list string) :optional)
    (datasetBindingIds (list string) :optional)
    (requiredCapabilityIds (list string) :optional)
    (deliverableIds (list string) :optional)
    (completionEvidence (list string) :optional))

  (document operation
    (:extends document
     :persistence persistent)
    (mission string :required)
    (objectives (list string) :optional)
    (status operation-status :required)
    (inScope (list string) :optional)
    (outOfScope (list string) :optional)
    (targetPolicy operation-target-policy :optional)
    (targets operation-target-bindings :optional)
    (phases (list operation-phase) :required)
    (datasets (list operation-dataset-binding) :optional)
    (capabilityGaps (list operation-capability-gap) :optional)
    (assignments (list operation-assignment) :optional)
    (postActions (list operation-post-action) :optional))

  (document investigation-target
    (:extends document
     :persistence persistent)
    (actor string :optional)
    (target string :required)
    (targetId string :optional)
    (targetType string :optional)
    (query string :optional)
    (researchQuestion string :optional)
    (hypotheses (list string) :optional)
    (objectives (list string) :optional)
    (inScope (list string) :optional)
    (outOfScope (list string) :optional)
    (scopeType string :optional)
    (seedIds (list string) :optional)
    (sourceIds (list string) :optional)
    (requiredDtypes (list string) :optional)
    (preferredSources (list string) :optional)
    (excludedSources (list string) :optional)
    (delay integer :optional)
    (recurring boolean :optional)
    (recurrence string :optional)
    (options (list any) :optional)
    (depth integer :optional)
    (maxDepth integer :optional)
    (breadth integer :optional)
    (priority decimal :optional)
    (score decimal :optional)
    (selectionReason (list string) :optional)
    (status string :optional)
    (nextRunAt (optional string) :optional))

  ;; Supported historical domain contracts, now authored in the StarLang authority.
  ;; Payload fields colliding with envelope metadata are retained separately.

  (scalar analysis-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar asset-identifier-records-item-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar asset-external-ids-item-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar campaign-finance-source-system-ids-item-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar claim-certainty
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar contract-source-system-ids-item-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar entity-identity-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar entity-identity-keys-item-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar entity-external-ids-item-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar evidence-record-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar procurement-source-system-ids-item-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar product-external-ids-item-confidence
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar research-node-limits-max-depth
    (:base integer
     :minimum 1))

  (scalar research-node-limits-max-actor-runs
    (:base integer
     :minimum 1))

  (scalar research-node-limits-max-requests
    (:base integer
     :minimum 1))

  (scalar research-node-limits-max-elapsed-ms
    (:base integer
     :minimum 1))

  (scalar research-node-limits-max-repeated-state
    (:base integer
     :minimum 1))

  (scalar research-node-limits-max-cost
    (:base decimal
     :minimum 0))

  (scalar research-node-counters-depth
    (:base integer
     :minimum 0))

  (scalar research-node-counters-actor-runs
    (:base integer
     :minimum 0))

  (scalar research-node-counters-requests
    (:base integer
     :minimum 0))

  (scalar research-node-counters-repeated-state
    (:base integer
     :minimum 0))

  (scalar research-node-counters-elapsed-ms
    (:base integer
     :minimum 0))

  (scalar research-node-counters-cost
    (:base decimal
     :minimum 0))

  (scalar source-credibility
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar source-reliability
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar source-authenticity
    (:base decimal
     :minimum 0
     :maximum 1))

  (scalar source-independence
    (:base decimal
     :minimum 0
     :maximum 1))

  (enum research-node-status
    (draft queued running paused blocked completed failed killed))

  (document asset-identifier-records-item
    (:persistence transient)
    (scheme string :required)
    (value string :required)
    (issuer string :optional)
    (jurisdiction string :optional)
    (canonical boolean :optional)
    (confidence asset-identifier-records-item-confidence :optional)
    (validFrom (optional iso-datetime) :optional)
    (validTo (optional iso-datetime) :optional)
    (url string :optional)
    (notes string :optional))

  (document asset-valuation-records-item
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document asset-external-ids-item
    (:persistence transient)
    (scheme string :required)
    (value string :required)
    (issuer string :optional)
    (jurisdiction string :optional)
    (canonical boolean :optional)
    (confidence asset-external-ids-item-confidence :optional)
    (validFrom (optional iso-datetime) :optional)
    (validTo (optional iso-datetime) :optional)
    (url string :optional)
    (notes string :optional))

  (document campaign-finance-amount-record
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document campaign-finance-aggregate-amount
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document campaign-finance-source-system-ids-item
    (:persistence transient)
    (scheme string :required)
    (value string :required)
    (issuer string :optional)
    (jurisdiction string :optional)
    (canonical boolean :optional)
    (confidence campaign-finance-source-system-ids-item-confidence :optional)
    (validFrom (optional iso-datetime) :optional)
    (validTo (optional iso-datetime) :optional)
    (url string :optional)
    (notes string :optional))

  (document contract-funding-records-item
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document contract-source-system-ids-item
    (:persistence transient)
    (scheme string :required)
    (value string :required)
    (issuer string :optional)
    (jurisdiction string :optional)
    (canonical boolean :optional)
    (confidence contract-source-system-ids-item-confidence :optional)
    (validFrom (optional iso-datetime) :optional)
    (validTo (optional iso-datetime) :optional)
    (url string :optional)
    (notes string :optional))

  (document employment-compensation-records-item
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document entity-identity-keys-item
    (:persistence transient)
    (scheme string :required)
    (value string :required)
    (issuer string :optional)
    (jurisdiction string :optional)
    (canonical boolean :optional)
    (confidence entity-identity-keys-item-confidence :optional)
    (validFrom (optional iso-datetime) :optional)
    (validTo (optional iso-datetime) :optional)
    (url string :optional)
    (notes string :optional))

  (document entity-external-ids-item
    (:persistence transient)
    (scheme string :required)
    (value string :required)
    (issuer string :optional)
    (jurisdiction string :optional)
    (canonical boolean :optional)
    (confidence entity-external-ids-item-confidence :optional)
    (validFrom (optional iso-datetime) :optional)
    (validTo (optional iso-datetime) :optional)
    (url string :optional)
    (notes string :optional))

  (document financial-observation-amount-record
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document grant-funding-records-item
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document grant-matching-amount
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document lobbying-filing-amount-records-item
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document ownership-value-record
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document procurement-funding-records-item
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document procurement-source-system-ids-item
    (:persistence transient)
    (scheme string :required)
    (value string :required)
    (issuer string :optional)
    (jurisdiction string :optional)
    (canonical boolean :optional)
    (confidence procurement-source-system-ids-item-confidence :optional)
    (validFrom (optional iso-datetime) :optional)
    (validTo (optional iso-datetime) :optional)
    (url string :optional)
    (notes string :optional))

  (document product-pricing-records-item
    (:persistence transient)
    (amount decimal :optional)
    (currency string :optional)
    (basis string :optional)
    (asOf (optional iso-datetime) :optional)
    (notes string :optional))

  (document product-external-ids-item
    (:persistence transient)
    (scheme string :required)
    (value string :required)
    (issuer string :optional)
    (jurisdiction string :optional)
    (canonical boolean :optional)
    (confidence product-external-ids-item-confidence :optional)
    (validFrom (optional iso-datetime) :optional)
    (validTo (optional iso-datetime) :optional)
    (url string :optional)
    (notes string :optional))

  (document research-node-limits
    (:persistence transient)
    (maxDepth research-node-limits-max-depth :optional)
    (maxActorRuns research-node-limits-max-actor-runs :optional)
    (maxRequests research-node-limits-max-requests :optional)
    (maxElapsedMs research-node-limits-max-elapsed-ms :optional)
    (maxRepeatedState research-node-limits-max-repeated-state :optional)
    (maxCost research-node-limits-max-cost :optional)
    (currency string :optional))

  (document research-node-stop
    (:persistence transient)
    (whenActorQueueEmpty boolean :optional)
    (whenNoNewDocuments boolean :optional)
    (whenObjectiveSatisfied boolean :optional)
    (haltOnActorFailure boolean :optional))

  (document research-node-counters
    (:persistence transient)
    (depth research-node-counters-depth :optional)
    (actorRuns research-node-counters-actor-runs :optional)
    (requests research-node-counters-requests :optional)
    (repeatedState research-node-counters-repeated-state :optional)
    (elapsedMs research-node-counters-elapsed-ms :optional)
    (cost research-node-counters-cost :optional))

  (document research-node-history-item
    (:persistence transient)
    (from (optional string) :optional)
    (to string :required)
    (at iso-datetime :required)
    (message string :optional)
    (error string :optional)
    (actorId string :optional)
    (runId string :optional)
    (outputIds (list string) :optional)
    (artifactIds (list string) :optional))

  (document alert
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (ruleId string :optional)
    (triggerEventId string :optional)
    (relatedAlertIds (list string) :optional)
    (firstTriggeredAt (optional iso-datetime) :optional)
    (lastTriggeredAt (optional iso-datetime) :optional)
    (occurrenceCount integer :optional)
    (acknowledgementActions (list map) :optional)
    (suppressedUntil string :optional)
    (resolvedAt (optional iso-datetime) :optional)
    (resolution string :optional)
    (alertType string :optional)
    (subjectIds (list string) :optional)
    (condition string :optional)
    (threshold decimal :optional)
    (triggeredAt (optional iso-datetime) :optional)
    (severity decimal :optional)
    (acknowledgedBy (list string) :optional))

  (document analysis
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (hypotheses (list string) :optional)
    (methodIds (list string) :optional)
    (claimIds (list string) :optional)
    (logic string :optional)
    (reasoningArtifactIds (list string) :optional)
    (uncertaintySources (list string) :optional)
    (dependencyIds (list string) :optional)
    (reviewIds (list string) :optional)
    (outputIds (list string) :optional)
    (question string :optional)
    (method string :optional)
    (framework string :optional)
    (scope string :optional)
    (inputIds (list string) :optional)
    (findingIds (list string) :optional)
    (findings (list string) :optional)
    (conclusions (list string) :optional)
    (recommendations (list string) :optional)
    (counterarguments (list string) :optional)
    (limitations (list string) :optional)
    (unresolved (list string) :optional)
    (payloadConfidence analysis-confidence :optional))

  (document asset
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (assetClass string :optional)
    (custodianIds (list string) :optional)
    (beneficialOwnerIds (list string) :optional)
    (identifierRecords (list asset-identifier-records-item) :optional)
    (valuationRecords (list asset-valuation-records-item) :optional)
    (acquiredAt (optional iso-datetime) :optional)
    (disposedAt (optional iso-datetime) :optional)
    (acquisitionEventId string :optional)
    (disposalEventId string :optional)
    (componentIds (list string) :optional)
    (etype string :optional)
    (eid string :optional)
    (name string :optional)
    (displayName string :optional)
    (legalName string :optional)
    (shortName string :optional)
    (formerNames (list string) :optional)
    (bio string :optional)
    (payloadJurisdiction string :optional)
    (country string :optional)
    (foundedAt (optional iso-datetime) :optional)
    (dissolvedAt (optional iso-datetime) :optional)
    (website string :optional)
    (imageUrl string :optional)
    (logoUrl string :optional)
    (payloadExternalIds (list asset-external-ids-item) :optional)
    (contactIds (list string) :optional)
    (locationIds (list string) :optional)
    (assetType string :optional)
    (ownerIds (list string) :optional)
    (operatorIds (list string) :optional)
    (serialNumber string :optional)
    (registration string :optional)
    (value decimal :optional)
    (currency string :optional)
    (locationId string :optional))

  (document campaign-finance
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (transactionId string :optional)
    (committeeIds (list string) :optional)
    (donorRefs (list string) :optional)
    (recipientRefs (list string) :optional)
    (amountRecord campaign-finance-amount-record :optional)
    (transactionDate string :optional)
    (memoed boolean :optional)
    (memoText string :optional)
    (refundOfId string :optional)
    (aggregateAmount campaign-finance-aggregate-amount :optional)
    (employer string :optional)
    (occupation string :optional)
    (sourceSystemIds (list campaign-finance-source-system-ids-item) :optional)
    (entityId string :optional)
    (observationType string :optional)
    (amount decimal :optional)
    (currency string :optional)
    (valueType string :optional)
    (periodStart (optional iso-datetime) :optional)
    (periodEnd (optional iso-datetime) :optional)
    (fiscalYear integer :optional)
    (fiscalQuarter string :optional)
    (reportedAt (optional iso-datetime) :optional)
    (counterpartyIds (list string) :optional)
    (instrument string :optional)
    (units decimal :optional)
    (unitPrice decimal :optional)
    (percentage decimal :optional)
    (methodology string :optional)
    (qualifications (list string) :optional)
    (committeeId string :optional)
    (donorId string :optional)
    (recipientId string :optional)
    (filingId string :optional)
    (contributionType string :optional)
    (electionCycle string :optional))

  (document claim
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (proposition string :optional)
    (subjectRefs (list string) :optional)
    (objectRefs (list string) :optional)
    (supportingSourceIds (list string) :optional)
    (reviewIds (list string) :optional)
    (truthStatus string :optional)
    (verificationMethod (list string) :optional)
    (derivedFromClaimIds (list string) :optional)
    (scope string :optional)
    (claim string :required)
    (claimantId string :optional)
    (subjectIds (list string) :optional)
    (predicate string :optional)
    (object any :optional)
    (claimType string :optional)
    (polarity string :optional)
    (certainty claim-certainty :optional)
    (supportingEvidenceIds (list string) :optional)
    (contradictingEvidenceIds (list string) :optional)
    (adjudication string :optional))

  (document concept
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (conceptId string :optional)
    (vocabulary string :optional)
    (namespace string :optional)
    (version string :optional)
    (preferredLabel string :optional)
    (synonyms (list string) :optional)
    (definitionSourceIds (list string) :optional)
    (mappingIds (list string) :optional)
    (term string :optional)
    (definition string :optional)
    (domain string :optional)
    (broaderIds (list string) :optional)
    (narrowerIds (list string) :optional)
    (relatedIds (list string) :optional)
    (examples (list string) :optional)
    (criteria (list string) :optional))

  (document contract
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (parentAwardId string :optional)
    (primeAwardId string :optional)
    (partyRoles (list map) :optional)
    (fundingRecords (list contract-funding-records-item) :optional)
    (lineItems (list map) :optional)
    (clauseIds (list string) :optional)
    (deliverableIds (list string) :optional)
    (performanceLocationIds (list string) :optional)
    (sourceSystemIds (list contract-source-system-ids-item) :optional)
    (contractId string :optional)
    (awardId string :optional)
    (solicitationId string :optional)
    (vehicleId string :optional)
    (buyerId string :optional)
    (sellerId string :optional)
    (agencyIds (list string) :optional)
    (vendorIds (list string) :optional)
    (subcontractorIds (list string) :optional)
    (scope string :optional)
    (awardType string :optional)
    (competitionType string :optional)
    (signedAt (optional iso-datetime) :optional)
    (startAt (optional iso-datetime) :optional)
    (endAt (optional iso-datetime) :optional)
    (ceilingAmount decimal :optional)
    (potentialAmount decimal :optional)
    (obligatedAmount decimal :optional)
    (outlayAmount decimal :optional)
    (recognizedRevenue decimal :optional)
    (currency string :optional)
    (naics (list string) :optional)
    (psc (list string) :optional)
    (placeOfPerformance string :optional)
    (modifications (list map) :optional))

  ;; countsByDtype is an injective entry list: keys MUST be unique, preserving
  ;; the original string-to-integer map without coercing dynamic property names.
  (document dataset-manifest-count-entry
    (:persistence transient)
    (key string :required)
    (value integer :required))

  (document dataset-manifest
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (datasetId string :optional)
    (datasetVersion string :optional)
    (profile string :optional)
    (profileVersion string :optional)
    (schemaRevision string :optional)
    (documentVersions (list string) :optional)
    (sourceDatasetIds (list string) :optional)
    (syncCursor string :optional)
    (syncStatus string :optional)
    (validatedAt (optional iso-datetime) :optional)
    (manifestType string :optional)
    (name string :optional)
    (actor string :optional)
    (consumerPath string :optional)
    (targetOptions (list any) :optional)
    (documentIds (list string) :optional)
    (countsByDtype (list dataset-manifest-count-entry) :optional)
    (recordCount integer :optional)
    (payloadHashAlgorithm string :optional)
    (payloadContentHash string :optional)
    (files (list map) :optional)
    (schemaVersions (list string) :optional)
    (generatedAt (optional iso-datetime) :optional))

  (document education
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (educationType string :optional)
    (credentialId string :optional)
    (programId string :optional)
    (attendanceStatus string :optional)
    (awardedAt (optional iso-datetime) :optional)
    (thesisTitle string :optional)
    (advisorIds (list string) :optional)
    (personId string :optional)
    (institutionId string :optional)
    (degree string :optional)
    (field string :optional)
    (startAt (optional iso-datetime) :optional)
    (endAt (optional iso-datetime) :optional)
    (graduated boolean :optional)
    (honors (list string) :optional))

  (document employment
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (roleIds (list string) :optional)
    (reportsToIds (list string) :optional)
    (appointmentType string :optional)
    (appointedByIds (list string) :optional)
    (compensationRecords (list employment-compensation-records-item) :optional)
    (responsibilities (list string) :optional)
    (terminationReason string :optional)
    (personId string :optional)
    (organizationId string :optional)
    (title string :optional)
    (department string :optional)
    (startAt (optional iso-datetime) :optional)
    (endAt (optional iso-datetime) :optional)
    (current boolean :optional)
    (employmentType string :optional)
    (locationId string :optional))

  (document entity
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (entityClass string :optional)
    (canonicalName string :optional)
    (sameAsIds (list string) :optional)
    (duplicateCandidateIds (list string) :optional)
    (identityConfidence entity-identity-confidence :optional)
    (identityKeys (list entity-identity-keys-item) :optional)
    (etype string :optional)
    (eid string :optional)
    (name string :optional)
    (displayName string :optional)
    (legalName string :optional)
    (shortName string :optional)
    (formerNames (list string) :optional)
    (bio string :optional)
    (payloadJurisdiction string :optional)
    (country string :optional)
    (foundedAt (optional iso-datetime) :optional)
    (dissolvedAt (optional iso-datetime) :optional)
    (website string :optional)
    (imageUrl string :optional)
    (logoUrl string :optional)
    (payloadExternalIds (list entity-external-ids-item) :optional)
    (contactIds (list string) :optional)
    (locationIds (list string) :optional))

  (document event
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (eventTypeId string :optional)
    (parentEventId string :optional)
    (childEventIds (list string) :optional)
    (participantRoles (list map) :optional)
    (actionRecords (list map) :optional)
    (sourceEventIds (list string) :optional)
    (recurrenceRule string :optional)
    (resultIds (list string) :optional)
    (claimIds (list string) :optional)
    (eventKind string :optional)
    (name string :optional)
    (participantIds (list string) :optional)
    (participants (list string) :optional)
    (organizerIds (list string) :optional)
    (sponsorIds (list string) :optional)
    (locationIds (list string) :optional)
    (startAt (optional iso-datetime) :optional)
    (endAt (optional iso-datetime) :optional)
    (outcome string :optional)
    (agenda (list string) :optional)
    (decisions (list string) :optional)
    (actions (list string) :optional)
    (amount decimal :optional)
    (currency string :optional)
    (payloadJurisdiction string :optional)
    (caseId string :optional)
    (contractId string :optional)
    (meetingId string :optional))

  (document evidence-record
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (subjectIds (list string) :optional)
    (claimIds (list string) :optional)
    (exactContent string :optional)
    (normalizedContent string :optional)
    (extractionMethod string :optional)
    (captureActionId string :optional)
    (custodyActions (list map) :optional)
    (hashes map :optional)
    (admissibilityStatus string :optional)
    (evidenceId string :optional)
    (sourceId string :optional)
    (sourceUrl string :optional)
    (kind string :optional)
    (role string :optional)
    (claim string :optional)
    (observation string :optional)
    (excerpt string :optional)
    (locator string :optional)
    (page string :optional)
    (section string :optional)
    (payloadCollectedAt (optional iso-datetime) :optional)
    (payloadObservedAt (optional iso-datetime) :optional)
    (payloadContentHash string :optional)
    (payloadHashAlgorithm string :optional)
    (payloadConfidence evidence-record-confidence :optional)
    (corroborates (list string) :optional)
    (contradicts (list string) :optional)
    (payloadChainOfCustody (list string) :optional)
    (attachments (list string) :optional)
    (payloadNotes string :optional)
    (metadata map :optional))

  (document financial-observation
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (transactionId string :optional)
    (payerIds (list string) :optional)
    (payeeIds (list string) :optional)
    (accountIds (list string) :optional)
    (amountRecord financial-observation-amount-record :optional)
    (amountBasis string :optional)
    (reportingStandard string :optional)
    (filingIds (list string) :optional)
    (sourceTransactionIds (list string) :optional)
    (memoed boolean :optional)
    (refunded boolean :optional)
    (entityId string :optional)
    (observationType string :optional)
    (amount decimal :optional)
    (currency string :optional)
    (valueType string :optional)
    (periodStart (optional iso-datetime) :optional)
    (periodEnd (optional iso-datetime) :optional)
    (fiscalYear integer :optional)
    (fiscalQuarter string :optional)
    (reportedAt (optional iso-datetime) :optional)
    (counterpartyIds (list string) :optional)
    (instrument string :optional)
    (units decimal :optional)
    (unitPrice decimal :optional)
    (percentage decimal :optional)
    (methodology string :optional)
    (qualifications (list string) :optional))

  (document grant
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (awardNumber string :optional)
    (primeRecipientId string :optional)
    (subrecipientIds (list string) :optional)
    (programId string :optional)
    (fundingRecords (list grant-funding-records-item) :optional)
    (assistanceListingIds (list string) :optional)
    (matchingAmount grant-matching-amount :optional)
    (performanceLocationIds (list string) :optional)
    (objectiveIds (list string) :optional)
    (reportIds (list string) :optional)
    (contractId string :optional)
    (awardId string :optional)
    (solicitationId string :optional)
    (vehicleId string :optional)
    (buyerId string :optional)
    (sellerId string :optional)
    (agencyIds (list string) :optional)
    (vendorIds (list string) :optional)
    (subcontractorIds (list string) :optional)
    (scope string :optional)
    (awardType string :optional)
    (competitionType string :optional)
    (signedAt (optional iso-datetime) :optional)
    (startAt (optional iso-datetime) :optional)
    (endAt (optional iso-datetime) :optional)
    (ceilingAmount decimal :optional)
    (potentialAmount decimal :optional)
    (obligatedAmount decimal :optional)
    (outlayAmount decimal :optional)
    (recognizedRevenue decimal :optional)
    (currency string :optional)
    (naics (list string) :optional)
    (psc (list string) :optional)
    (placeOfPerformance string :optional)
    (modifications (list map) :optional)
    (grantorId string :optional)
    (recipientIds (list string) :optional)
    (program string :optional)
    (assistanceListing string :optional)
    (matchingRequired boolean :optional))

  (document legal-case
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (courtId string :optional)
    (docketId string :optional)
    (partyRoles (list map) :optional)
    (relatedCaseIds (list string) :optional)
    (motionIds (list string) :optional)
    (orderIds (list string) :optional)
    (opinionIds (list string) :optional)
    (appealCaseIds (list string) :optional)
    (disposition string :optional)
    (precedentialStatus string :optional)
    (caseNumber string :optional)
    (caseName string :optional)
    (court string :optional)
    (payloadJurisdiction string :optional)
    (judgeIds (list string) :optional)
    (partyIds (list string) :optional)
    (plaintiffIds (list string) :optional)
    (defendantIds (list string) :optional)
    (attorneyIds (list string) :optional)
    (caseType string :optional)
    (claims (list string) :optional)
    (filedAt (optional iso-datetime) :optional)
    (closedAt (optional iso-datetime) :optional)
    (docketEntries (list map) :optional)
    (outcome string :optional)
    (citation string :optional))

  (document lobbying-filing
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (filingSystem string :optional)
    (registrantRefs (list string) :optional)
    (clientRefs (list string) :optional)
    (lobbyistRefs (list string) :optional)
    (coveredOfficialIds (list string) :optional)
    (issueCodes (list string) :optional)
    (amountRecords (list lobbying-filing-amount-records-item) :optional)
    (foreignEntityIds (list string) :optional)
    (priorFilingId string :optional)
    (amendsFilingId string :optional)
    (sourceFilingUrl string :optional)
    (filingId string :optional)
    (registrantId string :optional)
    (clientId string :optional)
    (lobbyistIds (list string) :optional)
    (governmentEntities (list string) :optional)
    (issues (list string) :optional)
    (specificIssues (list string) :optional)
    (income decimal :optional)
    (expenses decimal :optional)
    (currency string :optional)
    (periodStart (optional iso-datetime) :optional)
    (periodEnd (optional iso-datetime) :optional)
    (filedAt (optional iso-datetime) :optional)
    (filingType string :optional)
    (amendment boolean :optional)
    (termination boolean :optional))

  (document meeting
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (meetingType string :optional)
    (chairIds (list string) :optional)
    (attendeeRoles (list map) :optional)
    (agendaItemIds (list string) :optional)
    (minuteFileIds (list string) :optional)
    (decisionIds (list string) :optional)
    (actionItemIds (list string) :optional)
    (parentMeetingId string :optional)
    (recurrenceRule string :optional)
    (eventKind string :optional)
    (name string :optional)
    (participantIds (list string) :optional)
    (participants (list string) :optional)
    (organizerIds (list string) :optional)
    (sponsorIds (list string) :optional)
    (locationIds (list string) :optional)
    (startAt (optional iso-datetime) :optional)
    (endAt (optional iso-datetime) :optional)
    (outcome string :optional)
    (agenda (list string) :optional)
    (decisions (list string) :optional)
    (actions (list string) :optional)
    (amount decimal :optional)
    (currency string :optional)
    (payloadJurisdiction string :optional)
    (caseId string :optional)
    (contractId string :optional)
    (meetingId string :optional))

  (document observation
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (subjectRefs (list string) :optional)
    (observedProperty string :optional)
    (rawValue any :optional)
    (actionId string :optional)
    (observerRefs (list string) :optional)
    (uncertainty decimal :optional)
    (observerId string :optional)
    (subjectId string :optional)
    (observationType string :optional)
    (value any :optional)
    (unit string :optional)
    (method string :optional)
    (instrument string :optional)
    (payloadObservedAt (optional iso-datetime) :optional))

  (document ownership
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (ownerRefs (list string) :optional)
    (ownedRefs (list string) :optional)
    (ownershipInstrument string :optional)
    (percentageBasis string :optional)
    (votingPercentage decimal :optional)
    (economicPercentage decimal :optional)
    (valueRecord ownership-value-record :optional)
    (acquisitionEventId string :optional)
    (disposalEventId string :optional)
    (ownerId string :optional)
    (assetId string :optional)
    (ownershipType string :optional)
    (percentage decimal :optional)
    (units decimal :optional)
    (startAt (optional iso-datetime) :optional)
    (endAt (optional iso-datetime) :optional)
    (beneficial boolean :optional)
    (direct boolean :optional))

  (document policy
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (policyVersion string :optional)
    (parentPolicyId string :optional)
    (authorityIds (list string) :optional)
    (implementationIds (list string) :optional)
    (textFileIds (list string) :optional)
    (sectionIds (list string) :optional)
    (adoptedAt (optional iso-datetime) :optional)
    (repealedAt (optional iso-datetime) :optional)
    (supersededById string :optional)
    (complianceRequirementIds (list string) :optional)
    (policyId string :optional)
    (name string :optional)
    (issuerId string :optional)
    (payloadJurisdiction string :optional)
    (policyType string :optional)
    (text string :optional)
    (effectiveAt (optional iso-datetime) :optional)
    (payloadExpiresAt (optional iso-datetime) :optional)
    (affectedIds (list string) :optional))

  (document procurement
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (procurementStage string :optional)
    (noticeId string :optional)
    (parentAwardId string :optional)
    (partyRoles (list map) :optional)
    (fundingRecords (list procurement-funding-records-item) :optional)
    (lineItems (list map) :optional)
    (competitionExceptions (list string) :optional)
    (evaluationCriteria (list string) :optional)
    (sourceSystemIds (list procurement-source-system-ids-item) :optional)
    (contractId string :optional)
    (awardId string :optional)
    (solicitationId string :optional)
    (vehicleId string :optional)
    (buyerId string :optional)
    (sellerId string :optional)
    (agencyIds (list string) :optional)
    (vendorIds (list string) :optional)
    (subcontractorIds (list string) :optional)
    (scope string :optional)
    (awardType string :optional)
    (competitionType string :optional)
    (signedAt (optional iso-datetime) :optional)
    (startAt (optional iso-datetime) :optional)
    (endAt (optional iso-datetime) :optional)
    (ceilingAmount decimal :optional)
    (potentialAmount decimal :optional)
    (obligatedAmount decimal :optional)
    (outlayAmount decimal :optional)
    (recognizedRevenue decimal :optional)
    (currency string :optional)
    (naics (list string) :optional)
    (psc (list string) :optional)
    (placeOfPerformance string :optional)
    (modifications (list map) :optional))

  (document product
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (supplierIds (list string) :optional)
    (versionIds (list string) :optional)
    (componentIds (list string) :optional)
    (dependencyIds (list string) :optional)
    (deploymentIds (list string) :optional)
    (sbomFileIds (list string) :optional)
    (supportEndAt (optional iso-datetime) :optional)
    (pricingRecords (list product-pricing-records-item) :optional)
    (securityAdvisoryIds (list string) :optional)
    (etype string :optional)
    (eid string :optional)
    (name string :optional)
    (displayName string :optional)
    (legalName string :optional)
    (shortName string :optional)
    (formerNames (list string) :optional)
    (bio string :optional)
    (payloadJurisdiction string :optional)
    (country string :optional)
    (foundedAt (optional iso-datetime) :optional)
    (dissolvedAt (optional iso-datetime) :optional)
    (website string :optional)
    (imageUrl string :optional)
    (logoUrl string :optional)
    (payloadExternalIds (list product-external-ids-item) :optional)
    (contactIds (list string) :optional)
    (locationIds (list string) :optional)
    (manufacturerId string :optional)
    (vendorIds (list string) :optional)
    (productType string :optional)
    (model string :optional)
    (versionName string :optional)
    (releaseDate (optional iso-datetime) :optional)
    (endOfLife (optional iso-datetime) :optional)
    (features (list string) :optional)
    (capabilities (list string) :optional)
    (integrations (list string) :optional)
    (customers (list string) :optional)
    (license string :optional)
    (pricing map :optional)
    (technical map :optional))

  (document research-node
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status research-node-status :required)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (objective string :required)
    (instructions string :optional)
    (inputIds (list string) :optional)
    (targetIds (list string) :optional)
    (actorIds (list string) :optional)
    (actorSelectionRules (list map) :optional)
    (outputIds (list string) :optional)
    (artifactIds (list string) :optional)
    (childIds (list string) :optional)
    (dependencyIds (list string) :optional)
    (runIds (list string) :optional)
    (currentActorId string :optional)
    (currentRunId string :optional)
    (limits research-node-limits :optional)
    (stop research-node-stop :optional)
    (counters research-node-counters :optional)
    (history (list research-node-history-item) :optional)
    (nodeCreatedAt (optional iso-datetime) :optional)
    (startedAt (optional iso-datetime) :optional)
    (completedAt (optional iso-datetime) :optional)
    (lastError string :optional)
    (pausedReason string :optional))

  (document research-pass
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (parentPassId string :optional)
    (childPassIds (list string) :optional)
    (targetIds (list string) :optional)
    (actionRecords (list map) :optional)
    (claimIds (list string) :optional)
    (outputIds (list string) :optional)
    (metrics any :optional)
    (terminationReason string :optional)
    (schemaRevision string :optional)
    (researchQuestion string :optional)
    (method string :optional)
    (classificationRules (list string) :optional)
    (findingIds (list string) :optional)
    (findings (list map) :optional)
    (supportingRecordIds (list string) :optional)
    (counterevidenceIds (list string) :optional)
    (unresolvedTargetIds (list string) :optional)
    (sourceIds (list string) :optional)
    (agentIdentity string :optional)
    (narrativeRole string :optional)
    (startedAt (optional iso-datetime) :optional)
    (completedAt (optional iso-datetime) :optional)
    (iteration integer :optional))

  (document social-media-post
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (authorRefs (list string) :optional)
    (conversationId string :optional)
    (parentPostId string :optional)
    (attachmentIds (list string) :optional)
    (captureIds (list string) :optional)
    (engagementObservationIds (list string) :optional)
    (payloadContentHash string :optional)
    (content string :optional)
    (platform string :optional)
    (user string :optional)
    (userId string :optional)
    (isReply boolean :optional)
    (media (list string) :optional)
    (messageId string :optional)
    (replyTo string :optional)
    (group string :optional)
    (channel string :optional)
    (threadId string :optional)
    (mentions (list string) :optional)
    (reactions (list map) :optional)
    (links (list string) :optional)
    (postedAt (optional iso-datetime) :optional)
    (editedAt (optional iso-datetime) :optional)
    (payloadDeleted boolean :optional)
    (payloadVisibility string :optional)
    (replies (list map) :optional)
    (replyCount integer :optional)
    (repostCount integer :optional)
    (likeCount integer :optional)
    (viewCount integer :optional)
    (url string :optional)
    (payloadTags (list string) :optional)
    (title string :optional)
    (quotePostId string :optional))

  (document source
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (sourceTypeId string :optional)
    (publisherId string :optional)
    (authorIds (list string) :optional)
    (captureActionId string :optional)
    (originalFileIds (list string) :optional)
    (archiveIds (list string) :optional)
    (termsOfUse string :optional)
    (accessRestrictions (list string) :optional)
    (supersedesSourceIds (list string) :optional)
    (sourceId string :optional)
    (kind string :optional)
    (type string :optional)
    (sensor string :optional)
    (name string :optional)
    (title string :optional)
    (publisher string :optional)
    (author string :optional)
    (organization string :optional)
    (uri string :optional)
    (url string :optional)
    (archiveUrl string :optional)
    (publishedAt (optional iso-datetime) :optional)
    (retrievedAt (optional iso-datetime) :optional)
    (accessedAt (optional iso-datetime) :optional)
    (payloadLanguage string :optional)
    (payloadJurisdiction string :optional)
    (medium string :optional)
    (credibility source-credibility :optional)
    (reliability source-reliability :optional)
    (authenticity source-authenticity :optional)
    (independence source-independence :optional)
    (accessMethod string :optional)
    (query string :optional)
    (requestId string :optional)
    (responseStatus integer :optional)
    (payloadContentHash string :optional)
    (payloadHashAlgorithm string :optional)
    (license string :optional)
    (quote string :optional)
    (locator string :optional)
    (page string :optional)
    (section string :optional)
    (payloadNotes string :optional)
    (metadata map :optional))

  (document task
    (:extends document
     :persistence persistent)
    (description string :optional)
    (status string :optional)
    (contentValidFrom (optional iso-datetime) :optional)
    (contentValidUntil (optional iso-datetime) :optional)
    (parentTaskId string :optional)
    (dependencyTaskIds (list string) :optional)
    (actorIds (list string) :optional)
    (skillIds (list string) :optional)
    (toolIds (list string) :optional)
    (inputIds (list string) :optional)
    (attemptIds (list string) :optional)
    (schedule string :optional)
    (startedAt (optional iso-datetime) :optional)
    (resultSummary string :optional)
    (errorIds (list string) :optional)
    (taskType string :optional)
    (subjectIds (list string) :optional)
    (assigneeIds (list string) :optional)
    (priority decimal :optional)
    (dueAt (optional iso-datetime) :optional)
    (completedAt (optional iso-datetime) :optional)
    (instructions string :optional)
    (resultIds (list string) :optional))

  (document target
    (:extends document
     :persistence persistent)
    (actor string :required)
    (target string :required)
    (targetType string :optional)
    (scope reference :optional)
    (delay integer :optional)
    (recurring boolean :optional)
    (schedule string :optional)
    (options map :optional)
    (state target-state :optional)
    (priority integer :optional)
    (notBefore unix-time :optional)
    (deadline unix-time :optional)
    (lastRunAt unix-time :optional)
    (nextRunAt unix-time :optional)
    (attempts integer :optional)
    (maximumAttempts integer :optional)
    (lastError map :optional))

  (document actor-manifest
    (:extends document
     :persistence persistent)
    (actor string :required)
    (actorVersion string :optional)
    (consumerPaths (list string) :optional)
    (targetOptions map :optional)
    (accepts (list string) :optional)
    (produces (list string) :optional)
    (capabilities (list string) :optional)
    (runtime string :optional)
    (endpoint string :optional)
    (mailbox map :optional)
    (restartPolicy string :optional)
    (healthEndpoint uri :optional)
    (heartbeatSeconds integer :optional)
    (metadata map :optional))

  (document artifact
    (:extends document
     :persistence persistent)
    (name string :optional)
    (filename string :optional)
    (mediaType string :optional)
    (uri uri :optional)
    (storageUri uri :optional)
    (bytesHash string :optional)
    (size integer :optional)
    (extractedText string :optional)
    (ocrText string :optional)
    (metadata map :optional)
    (attachments (list reference) :optional))

  (document finding
    (:extends document
     :persistence persistent)
    (title string :required)
    (description string :optional)
    (findingType string :optional)
    (severity string :optional)
    (status string :optional)
    (asset reference :optional)
    (evidence (list reference) :optional)
    (recommendation string :optional)
    (discoveredAt unix-time :optional)
    (resolvedAt unix-time :optional)
    (cve (list string) :optional)
    (cwe (list string) :optional)
    (cvss map :optional))

  (document scope
    (:extends document
     :persistence persistent)
    (name string :required)
    (program string :optional)
    (inScope (list string) :optional)
    (outOfScope (list string) :optional)
    (rules string :optional)
    (startsAt unix-time :optional)
    (endsAt unix-time :optional)
    (rateLimits map :optional)
    (allowedTools (list string) :optional)
    (prohibitedActions (list string) :optional))

  ;; StarIntel 0.10.1 evidence/media/network vocabulary.
  ;; Binary storage stays separate from derived observations so provenance,
  ;; chain of custody, and content addressing survive enrichment.

  (enum pcap-format
    (pcap pcapng unknown))

  (enum network-layer
    (eth ip ipv6 tcp udp))

  (enum wireless-security
    (open wep wpa-psk wpa2-psk wpa2-enterprise
     wpa3-psk wpa3-enterprise wpa2wpa3-psk unknown))

  (enum wireless-station-type
    (station ap bridge bridge-ap unknown))

  (enum network-device-class
    (other unknown general-purpose router broadband-router switch wap bridge
     firewall load-balancer proxy-server print-server terminal-server terminal
     phone voip-phone voip-adapter pbx webcam printer media-device game-console
     pda storage storage-misc power-device remote-management security-misc
     specialized telecom-misc iot))

  (enum content-hash-algorithm
    (sha256 sha512 blake2b blake3))

  (document file
    (:extends document
     :persistence persistent)
    ;; Generic arbitrary-file contract. No allowlist of extensions or MIME
    ;; types exists here: unknown and application-specific files remain valid.
    ;; Consumers must never use filename/extension as a trust decision.
    (name string :optional)
    (filename string :optional)
    (originalName string :optional)
    (uri uri :optional)
    (storageUri uri :optional)
    (path string :optional)
    (fileKind string :optional)
    (mediaType string :optional)
    (declaredMediaType string :optional)
    (sniffedMediaType string :optional)
    (magicType string :optional)
    (detectedFormat string :optional)
    (extension string :optional)
    (storageId string :optional)
    (bytesHash string :required)
    (bytesHashAlgorithm content-hash-algorithm :required)
    (hashes map :optional)
    (trustFilenameExtension boolean :optional :default nil)
    (compression string :optional)
    (encrypted boolean :optional)
    (passwordProtected boolean :optional)
    (archive boolean :optional)
    (archiveEntries (list reference) :optional)
    (quarantined boolean :optional :default t)
    (executable boolean :optional :default nil)
    (parseStatus string :optional)
    (parser string :optional)
    (parserVersion string :optional)
    (parseError string :optional)
    (containerFile reference :optional)
    (parentFile reference :optional)
    (derivedFiles (list reference) :optional)
    (captureAction reference :optional)
    (extractedMetadata map :optional))

  (document media
    (:extends document
     :persistence persistent)
    (sourceFile reference :required)
    (mediaType string :optional)
    (codec string :optional)
    (container string :optional)
    (durationSeconds decimal :optional)
    (width integer :optional)
    (height integer :optional)
    (title string :optional)
    (creatorRefs (list reference) :optional)
    (publisher reference :optional)
    (transcript string :optional)
    (transcriptFile reference :optional)
    (ocrText string :optional)
    (derivativeFiles (list reference) :optional)
    (captureAction reference :optional))

  (document image
    (:extends file
     :persistence persistent)
    (width integer :optional)
    (height integer :optional)
    (orientation integer :optional)
    (capturedAt unix-time :optional)
    (captureDevice reference :optional)
    (location reference :optional)
    (exif map :optional)
    (ocrText string :optional)
    (thumbnailFiles (list reference) :optional)
    (derivedImages (list reference) :optional))

  (document picture
    (:extends image
     :persistence persistent)
    (pictureKind string :optional))

  (document video
    (:extends file
     :persistence persistent)
    (container string :optional)
    (codec string :optional)
    (width integer :optional)
    (height integer :optional)
    (durationSeconds decimal :optional)
    (frameRate decimal :optional)
    (frameCount integer :optional)
    (bitrate integer :optional)
    (capturedAt unix-time :optional)
    (captureDevice reference :optional)
    (location reference :optional)
    (audioTracks (list reference) :optional)
    (frames (list reference) :optional)
    (transcript reference :optional)
    (ocrObservations (list reference) :optional))

  (document video-frame
    (:extends image
     :persistence persistent)
    (video reference :required)
    (frameIndex integer :required)
    (timestampMs integer :required)
    (keyFrame boolean :optional)
    (detectedObjects (list reference) :optional)
    (entityObservations (list reference) :optional)
    (faceObservations (list reference) :optional))

  (document audio
    (:extends file
     :persistence persistent)
    (codec string :optional)
    (container string :optional)
    (sampleRateHz integer :optional)
    (channels integer :optional)
    (bitDepth integer :optional)
    (durationSeconds decimal :optional)
    (capturedAt unix-time :optional)
    (captureDevice reference :optional)
    (location reference :optional)
    (transcripts (list reference) :optional)
    (speakerObservations (list reference) :optional))

  (document audio-segment
    (:extends document
     :persistence persistent)
    (recording reference :required)
    (startMs integer :required)
    (endMs integer :required)
    (segmentFile reference :optional)
    (channel integer :optional))

  (document speech-segment
    (:extends audio-segment
     :persistence persistent)
    (text string :optional)
    (speaker reference :optional)
    (transcript reference :optional))

  (document speaker
    (:extends document
     :persistence persistent)
    (label string :optional)
    (person reference :optional)
    (embeddingModel string :optional)
    (embeddingRef reference :optional)
    (observationCount integer :optional)
    (firstObservedAt unix-time :optional)
    (lastObservedAt unix-time :optional))

  (document speaker-observation
    (:extends document
     :persistence persistent)
    (speaker reference :optional)
    (recording reference :required)
    (segment reference :optional)
    (startMs integer :required)
    (endMs integer :required)
    (embeddingModel string :optional)
    (embeddingRef reference :optional))

  (document speaker-turn
    (:extends document
     :persistence persistent)
    (recording reference :required)
    (speaker reference :optional)
    (segment reference :required)
    (turnIndex integer :required)
    (startMs integer :required)
    (endMs integer :required)
    (text string :optional))

  (document transcript
    (:extends document
     :persistence persistent)
    (sourceMedia reference :required)
    (transcriptFile reference :optional)
    (text string :optional)
    (model string :optional)
    (modelVersion string :optional)
    (actor string :optional)
    (startedAt unix-time :optional)
    (completedAt unix-time :optional)
    (segments (list reference) :optional)
    (speakerTurns (list reference) :optional)
    (wordTimings (list map) :optional))

  ;; Canonical HTTP/browser evidence. These absorb the retired 0.9.2
  ;; network-capture profile into the 0.10.1 StarLang authority. Header maps
  ;; are metadata only: producers MUST redact credentials/cookies before
  ;; persistence and keep body/DOM/screenshot bytes in artifact custody.
  (document http-transaction
    (:extends document
     :persistence persistent)
    (transactionId string :required)
    (requestId string :optional)
    (connectionId string :optional)
    (parentTransactionId string :optional)
    (method string :required)
    (url uri :required)
    (scheme string :optional)
    (host string :optional)
    (port port-number :optional)
    (path string :optional)
    (query string :optional)
    (httpVersion string :optional)
    (requestHeaders map :optional)
    (requestBodySize integer :optional)
    (requestBodyHash string :optional)
    (requestBodyArtifactUri uri :optional)
    (responseStatus integer :required)
    (responseReason string :optional)
    (responseHeaders map :optional)
    (responseBodySize integer :optional)
    (responseBodyHash string :optional)
    (responseBodyArtifactUri uri :optional)
    ;; Capture-profile timestamps remain textual for lossless 0.9.2 migration.
    ;; New producers SHOULD also populate the canonical envelope observedAt.
    (startedAt string :optional)
    (endedAt string :optional)
    (durationMs decimal :optional)
    (remoteIp string :optional)
    (remotePort port-number :optional)
    (tlsVersion string :optional)
    (tlsCipher string :optional)
    (tlsServerName string :optional)
    (certificateSha256 string :optional)
    (redirectFromId string :optional)
    (redirectToId string :optional)
    (captureActorUri uri :optional)
    (challengeStatus string :optional)
    (captchaDetectionId string :optional)
    (captchaCapability string :optional)
    (browserSessionRef uri :optional)
    (networkContextRef uri :optional)
    (proxyActorUri uri :optional)
    (redactedHeaders (list string) :optional)
    (bodyCapturePolicy string :optional)
    (requestTruncated boolean :optional :default nil)
    (responseTruncated boolean :optional :default nil))

  (document web-capture
    (:extends document
     :persistence persistent)
    (captureId string :required)
    (url uri :required)
    (finalUrl uri :optional)
    (title string :optional)
    (statusCode integer :optional)
    (browser string :optional)
    (browserVersion string :optional)
    (viewportWidth integer :optional)
    (viewportHeight integer :optional)
    (deviceScaleFactor decimal :optional)
    (screenshotUri uri :required)
    (screenshotHash string :required)
    (screenshotMediaType string :optional)
    (screenshotSizeBytes integer :optional)
    (domArtifactUri uri :optional)
    (domArtifactHash string :optional)
    (domArtifactSizeBytes integer :optional)
    ;; Kept textual for compatibility with the retired 0.9.2 profile.
    (capturedAt string :optional)
    (httpTransactionIds (list string) :optional)
    (captureActorUri uri :optional)
    (challengeStatus string :optional)
    (captchaDetectionId string :optional)
    (captchaCapability string :optional)
    (browserSessionRef uri :optional)
    (networkContextRef uri :optional)
    (proxyActorUri uri :optional))

  (document pcap-capture
    (:extends document
     :persistence persistent)
    (captureId string :required)
    (file reference :optional)
    (fileUri uri :required)
    (fileSha256 string :required)
    (format pcap-format :required)
    (fileSizeBytes integer :optional)
    (packetCount integer :optional)
    (captureStart unix-time :optional)
    (captureEnd unix-time :optional)
    (durationSeconds decimal :optional)
    (captureSoftware string :optional)
    (sensor reference :optional)
    (interfaces (list map) :optional)
    (protocolHierarchy (list map) :optional)
    (analysisActorUri uri :optional))

  (document network-conversation
    (:extends document
     :persistence persistent)
    (conversationId string :required)
    (capture reference :required)
    (layer network-layer :required)
    (endpointA map :optional)
    (endpointB map :optional)
    (aPackets integer :optional)
    (bPackets integer :optional)
    (aBytes integer :optional)
    (bBytes integer :optional)
    (protocols (list string) :optional)
    (firstFrameNum integer :optional)
    (lastFrameNum integer :optional)
    (startedAt unix-time :optional)
    (endedAt unix-time :optional)
    (durationSeconds decimal :optional))

  (document network-device
    (:extends document
     :persistence persistent)
    (deviceId string :optional)
    (deviceClass network-device-class :required)
    (hardwareClass string :optional)
    (vendor string :optional)
    (model string :optional)
    (firmwareVersion string :optional)
    (serialNumber string :optional)
    (cpe string :optional)
    (parentDevice reference :optional)
    (site reference :optional)
    (managementAddresses (list reference) :optional)
    (hostedHosts (list reference) :optional)
    (discoveredBy (list reference) :optional)
    (firstSeen unix-time :optional)
    (lastSeen unix-time :optional))

  (document wireless-network
    (:extends document
     :persistence persistent)
    (bssid string :required)
    (ssid string :optional)
    (security wireless-security :required)
    (authMode string :optional)
    (cipherSuite string :optional)
    (channel integer :optional)
    (frequencyMhz integer :optional)
    (band string :optional)
    (signalDbm integer :optional)
    (vendor string :optional)
    (clientCount integer :optional)
    (sourceNetworkId string :optional)
    (hostedHost reference :optional)
    (location reference :optional)
    (locationAccuracyMeters decimal :optional)
    (observations integer :optional)
    (firstSeen unix-time :optional)
    (lastSeen unix-time :optional))

  (document wireless-station
    (:extends document
     :persistence persistent)
    (mac string :required)
    (stationType wireless-station-type :optional)
    (lastBssid string :optional)
    (probeSsids (list string) :optional)
    (signalDbm integer :optional)
    (vendor string :optional)
    (packets integer :optional)
    (dataBytes integer :optional)
    (observations integer :optional)
    (sourceDevice reference :optional)
    (firstSeen unix-time :optional)
    (lastSeen unix-time :optional))

  (predicate related-to
    (:source document
     :destination document))

  (predicate same-as
    (:source document
     :destination document))

  (predicate member-of
    (:source person
     :destination org))

  (predicate employed-by
    (:source person
     :destination org))

  (predicate owns
    (:source document
     :destination document))

  (predicate located-at
    (:source document
     :destination geo))

  (predicate part-of-mission
    (:source document
     :destination mission))

  (predicate mission-has-target
    (:source mission
     :destination mission-target))

  (predicate mission-uses-route
    (:source mission
     :destination route))

  (predicate mission-has-geofence
    (:source mission
     :destination geofence))

  (predicate observed-in-encounter
    (:source document
     :destination encounter))

  (predicate links-to
    (:source url
     :destination url))

  (predicate resolves-to
    (:source domain
     :destination host))

  (predicate hosts-service
    (:source host
     :destination service))

  (predicate belongs-to-asn
    (:source host
     :destination network))

  (predicate leaked-in
    (:source document
     :destination breach))

  (predicate collected-from
    (:source document
     :destination document))

  (predicate derived-from
    (:source document
     :destination document))

  (predicate evidence-of
    (:source artifact
     :destination finding))

  (predicate in-scope-of
    (:source document
     :destination scope))

  (predicate has-finding
    (:source document
     :destination finding))

  (message upsert-document
    (:fields
     ((document reference :required)
      (dataset string :required)
      (runId string :optional))))

  (message query-documents
    (:fields
     ((dataset string :required)
      (dtype string :optional)
      (filters map :optional)
      (limit integer :optional)
      (cursor string :optional))))

  (message schedule-target
    (:fields
     ((target reference :required)
      (requestedBy string :optional))))

  (message schedule-mission
    (:fields
     ((mission reference :required)
      (requestedBy string :optional))))

  (message query-spatial
    (:fields
     ((dataset string :required)
      (mode spatial-query-mode :required)
      (geometry reference :optional)
      (boundingBox (list decimal) :optional)
      (referencePoint reference :optional)
      (maximumDistanceMeters distance-meters :optional)
      (dtype string :optional)
      (filters map :optional)
      (atTime unix-time :optional)
      (limit integer :optional)
      (cursor string :optional))))

  (message actor-manifest-announcement
    (:fields
     ((manifest reference :required)
      (announcedAt unix-time :required)))))
