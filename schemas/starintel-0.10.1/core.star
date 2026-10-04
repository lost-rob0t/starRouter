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
