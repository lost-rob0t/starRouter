;;;; Generated from StarLang portable manifest. DO NOT EDIT. language=common-lisp

(defpackage #:org.starintel.core.v1
  (:use #:cl)
  (:export
    #:star-reference
    #:MAKE-star-reference
    #:COPY-star-reference
    #:star-reference-P
    #:+star-reference-WIRE-FIELDS+
    #:star-reference-schema
    #:star-reference-id
    #:document-id
    #:unix-time
    #:confidence-score
    #:latitude
    #:longitude
    #:port-number
    #:asn-number
    #:uri
    #:email-address
    #:phone-number
    #:distance-meters
    #:analysis-confidence
    #:asset-identifier-records-item-confidence
    #:asset-external-ids-item-confidence
    #:campaign-finance-source-system-ids-item-confidence
    #:claim-certainty
    #:contract-source-system-ids-item-confidence
    #:entity-identity-confidence
    #:entity-identity-keys-item-confidence
    #:entity-external-ids-item-confidence
    #:evidence-record-confidence
    #:procurement-source-system-ids-item-confidence
    #:product-external-ids-item-confidence
    #:research-node-limits-max-depth
    #:research-node-limits-max-actor-runs
    #:research-node-limits-max-requests
    #:research-node-limits-max-elapsed-ms
    #:research-node-limits-max-repeated-state
    #:research-node-limits-max-cost
    #:research-node-counters-depth
    #:research-node-counters-actor-runs
    #:research-node-counters-requests
    #:research-node-counters-repeated-state
    #:research-node-counters-elapsed-ms
    #:research-node-counters-cost
    #:source-credibility
    #:source-reliability
    #:source-authenticity
    #:source-independence
    #:sensitivity
    #:visibility
    #:collection-status
    #:source-kind
    #:hash-algorithm
    #:relation-direction
    #:target-state
    #:mission-state
    #:mission-target-state
    #:route-mode
    #:geofence-transition
    #:encounter-kind
    #:spatial-query-mode
    #:map-layer-kind
    #:geo-geometry-type
    #:operation-role
    #:operation-access
    #:operation-category
    #:operation-capability-status
    #:operation-status
    #:operation-assignment-status
    #:operation-post-action-status
    #:operation-state
    #:research-node-status
    #:pcap-format
    #:network-layer
    #:wireless-security
    #:wireless-station-type
    #:network-device-class
    #:content-hash-algorithm
    #:document
    #:MAKE-document
    #:COPY-document
    #:document-P
    #:+document-WIRE-FIELDS+
    #:document-rev
    #:document-dataset
    #:document-dtype
    #:document-schemaversion
    #:document-externalids
    #:document-aliases
    #:document-sources
    #:document-sourceurls
    #:document-sourcerecordids
    #:document-sourcekinds
    #:document-sourcelicense
    #:document-sourceterms
    #:document-sourceretrievedat
    #:document-collectedat
    #:document-observedat
    #:document-firstseenat
    #:document-lastseenat
    #:document-createdat
    #:document-updatedat
    #:document-validfrom
    #:document-validuntil
    #:document-expiresat
    #:document-collector
    #:document-collectorversion
    #:document-collectionmethod
    #:document-collectionstatus
    #:document-runid
    #:document-correlationid
    #:document-causationid
    #:document-parentid
    #:document-rootid
    #:document-confidence
    #:document-confidencebasis
    #:document-qualityscore
    #:document-completenessscore
    #:document-verificationstatus
    #:document-verifiedat
    #:document-verifiedby
    #:document-provenance
    #:document-chainofcustody
    #:document-transformhistory
    #:document-labels
    #:document-tags
    #:document-topics
    #:document-language
    #:document-jurisdiction
    #:document-countrycode
    #:document-regioncode
    #:document-timezone
    #:document-sensitivity
    #:document-visibility
    #:document-owner
    #:document-accesscontrol
    #:document-legalbasis
    #:document-retentionpolicy
    #:document-contenttype
    #:document-encoding
    #:document-sizebytes
    #:document-contenthash
    #:document-hashalgorithm
    #:document-normalizedhash
    #:document-raw
    #:document-rawcontent
    #:document-notes
    #:document-deleted
    #:document-tombstonereason
    #:document-extensions
    #:person
    #:MAKE-person
    #:COPY-person
    #:person-P
    #:+person-WIRE-FIELDS+
    #:person-id
    #:person-rev
    #:person-dataset
    #:person-dtype
    #:person-schemaversion
    #:person-externalids
    #:person-aliases
    #:person-sources
    #:person-sourceurls
    #:person-sourcerecordids
    #:person-sourcekinds
    #:person-sourcelicense
    #:person-sourceterms
    #:person-sourceretrievedat
    #:person-collectedat
    #:person-observedat
    #:person-firstseenat
    #:person-lastseenat
    #:person-createdat
    #:person-updatedat
    #:person-validfrom
    #:person-validuntil
    #:person-expiresat
    #:person-collector
    #:person-collectorversion
    #:person-collectionmethod
    #:person-collectionstatus
    #:person-runid
    #:person-correlationid
    #:person-causationid
    #:person-parentid
    #:person-rootid
    #:person-confidence
    #:person-confidencebasis
    #:person-qualityscore
    #:person-completenessscore
    #:person-verificationstatus
    #:person-verifiedat
    #:person-verifiedby
    #:person-provenance
    #:person-chainofcustody
    #:person-transformhistory
    #:person-labels
    #:person-tags
    #:person-topics
    #:person-language
    #:person-jurisdiction
    #:person-countrycode
    #:person-regioncode
    #:person-timezone
    #:person-sensitivity
    #:person-visibility
    #:person-owner
    #:person-accesscontrol
    #:person-legalbasis
    #:person-retentionpolicy
    #:person-contenttype
    #:person-encoding
    #:person-sizebytes
    #:person-contenthash
    #:person-hashalgorithm
    #:person-normalizedhash
    #:person-raw
    #:person-rawcontent
    #:person-notes
    #:person-deleted
    #:person-tombstonereason
    #:person-extensions
    #:person-fname
    #:person-mname
    #:person-lname
    #:person-fullname
    #:person-displayname
    #:person-prefix
    #:person-suffix
    #:person-pronouns
    #:person-bio
    #:person-dob
    #:person-dateofdeath
    #:person-age
    #:person-gender
    #:person-nationality
    #:person-citizenship
    #:person-occupation
    #:person-employer
    #:person-education
    #:person-skills
    #:person-interests
    #:person-region
    #:person-addresses
    #:person-emails
    #:person-phones
    #:person-accounts
    #:person-images
    #:person-identifiers
    #:person-misc
    #:person-etype
    #:person-eid
    #:person-identifier
    #:MAKE-person-identifier
    #:COPY-person-identifier
    #:person-identifier-P
    #:+person-identifier-WIRE-FIELDS+
    #:person-identifier-id
    #:person-identifier-rev
    #:person-identifier-dataset
    #:person-identifier-dtype
    #:person-identifier-schemaversion
    #:person-identifier-externalids
    #:person-identifier-aliases
    #:person-identifier-sources
    #:person-identifier-sourceurls
    #:person-identifier-sourcerecordids
    #:person-identifier-sourcekinds
    #:person-identifier-sourcelicense
    #:person-identifier-sourceterms
    #:person-identifier-sourceretrievedat
    #:person-identifier-collectedat
    #:person-identifier-observedat
    #:person-identifier-firstseenat
    #:person-identifier-lastseenat
    #:person-identifier-createdat
    #:person-identifier-updatedat
    #:person-identifier-validfrom
    #:person-identifier-validuntil
    #:person-identifier-expiresat
    #:person-identifier-collector
    #:person-identifier-collectorversion
    #:person-identifier-collectionmethod
    #:person-identifier-collectionstatus
    #:person-identifier-runid
    #:person-identifier-correlationid
    #:person-identifier-causationid
    #:person-identifier-parentid
    #:person-identifier-rootid
    #:person-identifier-confidence
    #:person-identifier-confidencebasis
    #:person-identifier-qualityscore
    #:person-identifier-completenessscore
    #:person-identifier-verificationstatus
    #:person-identifier-verifiedat
    #:person-identifier-verifiedby
    #:person-identifier-provenance
    #:person-identifier-chainofcustody
    #:person-identifier-transformhistory
    #:person-identifier-labels
    #:person-identifier-tags
    #:person-identifier-topics
    #:person-identifier-language
    #:person-identifier-jurisdiction
    #:person-identifier-countrycode
    #:person-identifier-regioncode
    #:person-identifier-timezone
    #:person-identifier-sensitivity
    #:person-identifier-visibility
    #:person-identifier-owner
    #:person-identifier-accesscontrol
    #:person-identifier-legalbasis
    #:person-identifier-retentionpolicy
    #:person-identifier-contenttype
    #:person-identifier-encoding
    #:person-identifier-sizebytes
    #:person-identifier-contenthash
    #:person-identifier-hashalgorithm
    #:person-identifier-normalizedhash
    #:person-identifier-raw
    #:person-identifier-rawcontent
    #:person-identifier-notes
    #:person-identifier-deleted
    #:person-identifier-tombstonereason
    #:person-identifier-extensions
    #:person-identifier-person
    #:person-identifier-scheme
    #:person-identifier-value
    #:person-identifier-normalizedvalue
    #:person-identifier-issuer
    #:person-identifier-primary
    #:person-identifier-sensitive
    #:person-identifier-sourcedocument
    #:org
    #:MAKE-org
    #:COPY-org
    #:org-P
    #:+org-WIRE-FIELDS+
    #:org-id
    #:org-rev
    #:org-dataset
    #:org-dtype
    #:org-schemaversion
    #:org-externalids
    #:org-aliases
    #:org-sources
    #:org-sourceurls
    #:org-sourcerecordids
    #:org-sourcekinds
    #:org-sourcelicense
    #:org-sourceterms
    #:org-sourceretrievedat
    #:org-collectedat
    #:org-observedat
    #:org-firstseenat
    #:org-lastseenat
    #:org-createdat
    #:org-updatedat
    #:org-validfrom
    #:org-validuntil
    #:org-expiresat
    #:org-collector
    #:org-collectorversion
    #:org-collectionmethod
    #:org-collectionstatus
    #:org-runid
    #:org-correlationid
    #:org-causationid
    #:org-parentid
    #:org-rootid
    #:org-confidence
    #:org-confidencebasis
    #:org-qualityscore
    #:org-completenessscore
    #:org-verificationstatus
    #:org-verifiedat
    #:org-verifiedby
    #:org-provenance
    #:org-chainofcustody
    #:org-transformhistory
    #:org-labels
    #:org-tags
    #:org-topics
    #:org-language
    #:org-jurisdiction
    #:org-countrycode
    #:org-regioncode
    #:org-timezone
    #:org-sensitivity
    #:org-visibility
    #:org-owner
    #:org-accesscontrol
    #:org-legalbasis
    #:org-retentionpolicy
    #:org-contenttype
    #:org-encoding
    #:org-sizebytes
    #:org-contenthash
    #:org-hashalgorithm
    #:org-normalizedhash
    #:org-raw
    #:org-rawcontent
    #:org-notes
    #:org-deleted
    #:org-tombstonereason
    #:org-extensions
    #:org-reg
    #:org-registrationnumbers
    #:org-name
    #:org-legalname
    #:org-alternatenames
    #:org-bio
    #:org-description
    #:org-organizationtype
    #:org-industry
    #:org-foundeddate
    #:org-dissolveddate
    #:org-status
    #:org-country
    #:org-jurisdictions
    #:org-headquarters
    #:org-addresses
    #:org-website
    #:org-domains
    #:org-emails
    #:org-phones
    #:org-parentorg
    #:org-subsidiaries
    #:org-officers
    #:org-employees
    #:org-owners
    #:org-beneficialowners
    #:org-identifiers
    #:org-etype
    #:org-eid
    #:relation
    #:MAKE-relation
    #:COPY-relation
    #:relation-P
    #:+relation-WIRE-FIELDS+
    #:relation-id
    #:relation-rev
    #:relation-dataset
    #:relation-dtype
    #:relation-schemaversion
    #:relation-externalids
    #:relation-aliases
    #:relation-sources
    #:relation-sourceurls
    #:relation-sourcerecordids
    #:relation-sourcekinds
    #:relation-sourcelicense
    #:relation-sourceterms
    #:relation-sourceretrievedat
    #:relation-collectedat
    #:relation-observedat
    #:relation-firstseenat
    #:relation-lastseenat
    #:relation-createdat
    #:relation-updatedat
    #:relation-validfrom
    #:relation-validuntil
    #:relation-expiresat
    #:relation-collector
    #:relation-collectorversion
    #:relation-collectionmethod
    #:relation-collectionstatus
    #:relation-runid
    #:relation-correlationid
    #:relation-causationid
    #:relation-parentid
    #:relation-rootid
    #:relation-confidence
    #:relation-confidencebasis
    #:relation-qualityscore
    #:relation-completenessscore
    #:relation-verificationstatus
    #:relation-verifiedat
    #:relation-verifiedby
    #:relation-provenance
    #:relation-chainofcustody
    #:relation-transformhistory
    #:relation-labels
    #:relation-tags
    #:relation-topics
    #:relation-language
    #:relation-jurisdiction
    #:relation-countrycode
    #:relation-regioncode
    #:relation-timezone
    #:relation-sensitivity
    #:relation-visibility
    #:relation-owner
    #:relation-accesscontrol
    #:relation-legalbasis
    #:relation-retentionpolicy
    #:relation-contenttype
    #:relation-encoding
    #:relation-sizebytes
    #:relation-contenthash
    #:relation-hashalgorithm
    #:relation-normalizedhash
    #:relation-raw
    #:relation-rawcontent
    #:relation-notes
    #:relation-deleted
    #:relation-tombstonereason
    #:relation-extensions
    #:relation-source
    #:relation-destination
    #:relation-predicate
    #:relation-inversepredicate
    #:relation-note
    #:relation-evidence
    #:relation-weight
    #:relation-validat
    #:relation-endedat
    #:domain
    #:MAKE-domain
    #:COPY-domain
    #:domain-P
    #:+domain-WIRE-FIELDS+
    #:domain-id
    #:domain-rev
    #:domain-dataset
    #:domain-dtype
    #:domain-schemaversion
    #:domain-externalids
    #:domain-aliases
    #:domain-sources
    #:domain-sourceurls
    #:domain-sourcerecordids
    #:domain-sourcekinds
    #:domain-sourcelicense
    #:domain-sourceterms
    #:domain-sourceretrievedat
    #:domain-collectedat
    #:domain-observedat
    #:domain-firstseenat
    #:domain-lastseenat
    #:domain-createdat
    #:domain-updatedat
    #:domain-validfrom
    #:domain-validuntil
    #:domain-expiresat
    #:domain-collector
    #:domain-collectorversion
    #:domain-collectionmethod
    #:domain-collectionstatus
    #:domain-runid
    #:domain-correlationid
    #:domain-causationid
    #:domain-parentid
    #:domain-rootid
    #:domain-confidence
    #:domain-confidencebasis
    #:domain-qualityscore
    #:domain-completenessscore
    #:domain-verificationstatus
    #:domain-verifiedat
    #:domain-verifiedby
    #:domain-provenance
    #:domain-chainofcustody
    #:domain-transformhistory
    #:domain-labels
    #:domain-tags
    #:domain-topics
    #:domain-language
    #:domain-jurisdiction
    #:domain-countrycode
    #:domain-regioncode
    #:domain-timezone
    #:domain-sensitivity
    #:domain-visibility
    #:domain-owner
    #:domain-accesscontrol
    #:domain-legalbasis
    #:domain-retentionpolicy
    #:domain-contenttype
    #:domain-encoding
    #:domain-sizebytes
    #:domain-contenthash
    #:domain-hashalgorithm
    #:domain-normalizedhash
    #:domain-raw
    #:domain-rawcontent
    #:domain-notes
    #:domain-deleted
    #:domain-tombstonereason
    #:domain-extensions
    #:domain-name
    #:domain-unicodename
    #:domain-punycodename
    #:domain-recordtype
    #:domain-record
    #:domain-resolvedaddresses
    #:domain-dnsrecords
    #:domain-nameservers
    #:domain-mxrecords
    #:domain-txtrecords
    #:domain-registrar
    #:domain-registrant
    #:domain-whois
    #:domain-registeredat
    #:domain-renewedat
    #:domain-registryexpiresat
    #:domain-dnssec
    #:domain-statuscodes
    #:service
    #:MAKE-service
    #:COPY-service
    #:service-P
    #:+service-WIRE-FIELDS+
    #:service-id
    #:service-rev
    #:service-dataset
    #:service-dtype
    #:service-schemaversion
    #:service-externalids
    #:service-aliases
    #:service-sources
    #:service-sourceurls
    #:service-sourcerecordids
    #:service-sourcekinds
    #:service-sourcelicense
    #:service-sourceterms
    #:service-sourceretrievedat
    #:service-collectedat
    #:service-observedat
    #:service-firstseenat
    #:service-lastseenat
    #:service-createdat
    #:service-updatedat
    #:service-validfrom
    #:service-validuntil
    #:service-expiresat
    #:service-collector
    #:service-collectorversion
    #:service-collectionmethod
    #:service-collectionstatus
    #:service-runid
    #:service-correlationid
    #:service-causationid
    #:service-parentid
    #:service-rootid
    #:service-confidence
    #:service-confidencebasis
    #:service-qualityscore
    #:service-completenessscore
    #:service-verificationstatus
    #:service-verifiedat
    #:service-verifiedby
    #:service-provenance
    #:service-chainofcustody
    #:service-transformhistory
    #:service-labels
    #:service-tags
    #:service-topics
    #:service-language
    #:service-jurisdiction
    #:service-countrycode
    #:service-regioncode
    #:service-timezone
    #:service-sensitivity
    #:service-visibility
    #:service-owner
    #:service-accesscontrol
    #:service-legalbasis
    #:service-retentionpolicy
    #:service-contenttype
    #:service-encoding
    #:service-sizebytes
    #:service-contenthash
    #:service-hashalgorithm
    #:service-normalizedhash
    #:service-raw
    #:service-rawcontent
    #:service-notes
    #:service-deleted
    #:service-tombstonereason
    #:service-extensions
    #:service-host
    #:service-port
    #:service-transport
    #:service-name
    #:service-product
    #:service-vendor
    #:service-version
    #:service-protocol
    #:service-scheme
    #:service-banner
    #:service-state
    #:service-tls
    #:service-tlscertificate
    #:service-cpe
    #:service-fingerprints
    #:service-firstopenat
    #:service-lastopenat
    #:port
    #:MAKE-port
    #:COPY-port
    #:port-P
    #:+port-WIRE-FIELDS+
    #:port-id
    #:port-rev
    #:port-dataset
    #:port-dtype
    #:port-schemaversion
    #:port-externalids
    #:port-aliases
    #:port-sources
    #:port-sourceurls
    #:port-sourcerecordids
    #:port-sourcekinds
    #:port-sourcelicense
    #:port-sourceterms
    #:port-sourceretrievedat
    #:port-collectedat
    #:port-observedat
    #:port-firstseenat
    #:port-lastseenat
    #:port-createdat
    #:port-updatedat
    #:port-validfrom
    #:port-validuntil
    #:port-expiresat
    #:port-collector
    #:port-collectorversion
    #:port-collectionmethod
    #:port-collectionstatus
    #:port-runid
    #:port-correlationid
    #:port-causationid
    #:port-parentid
    #:port-rootid
    #:port-confidence
    #:port-confidencebasis
    #:port-qualityscore
    #:port-completenessscore
    #:port-verificationstatus
    #:port-verifiedat
    #:port-verifiedby
    #:port-provenance
    #:port-chainofcustody
    #:port-transformhistory
    #:port-labels
    #:port-tags
    #:port-topics
    #:port-language
    #:port-jurisdiction
    #:port-countrycode
    #:port-regioncode
    #:port-timezone
    #:port-sensitivity
    #:port-visibility
    #:port-owner
    #:port-accesscontrol
    #:port-legalbasis
    #:port-retentionpolicy
    #:port-contenttype
    #:port-encoding
    #:port-sizebytes
    #:port-contenthash
    #:port-hashalgorithm
    #:port-normalizedhash
    #:port-raw
    #:port-rawcontent
    #:port-notes
    #:port-deleted
    #:port-tombstonereason
    #:port-extensions
    #:port-transport
    #:port-protocol
    #:port-service
    #:port-state
    #:port-reason
    #:port-banner
    #:port-host
    #:port-firstopenat
    #:port-lastopenat
    #:network
    #:MAKE-network
    #:COPY-network
    #:network-P
    #:+network-WIRE-FIELDS+
    #:network-id
    #:network-rev
    #:network-dataset
    #:network-dtype
    #:network-schemaversion
    #:network-externalids
    #:network-aliases
    #:network-sources
    #:network-sourceurls
    #:network-sourcerecordids
    #:network-sourcekinds
    #:network-sourcelicense
    #:network-sourceterms
    #:network-sourceretrievedat
    #:network-collectedat
    #:network-observedat
    #:network-firstseenat
    #:network-lastseenat
    #:network-createdat
    #:network-updatedat
    #:network-validfrom
    #:network-validuntil
    #:network-expiresat
    #:network-collector
    #:network-collectorversion
    #:network-collectionmethod
    #:network-collectionstatus
    #:network-runid
    #:network-correlationid
    #:network-causationid
    #:network-parentid
    #:network-rootid
    #:network-confidence
    #:network-confidencebasis
    #:network-qualityscore
    #:network-completenessscore
    #:network-verificationstatus
    #:network-verifiedat
    #:network-verifiedby
    #:network-provenance
    #:network-chainofcustody
    #:network-transformhistory
    #:network-labels
    #:network-tags
    #:network-topics
    #:network-language
    #:network-jurisdiction
    #:network-countrycode
    #:network-regioncode
    #:network-timezone
    #:network-sensitivity
    #:network-visibility
    #:network-owner
    #:network-accesscontrol
    #:network-legalbasis
    #:network-retentionpolicy
    #:network-contenttype
    #:network-encoding
    #:network-sizebytes
    #:network-contenthash
    #:network-hashalgorithm
    #:network-normalizedhash
    #:network-raw
    #:network-rawcontent
    #:network-notes
    #:network-deleted
    #:network-tombstonereason
    #:network-extensions
    #:network-org
    #:network-subnet
    #:network-asn
    #:network-asnname
    #:network-rir
    #:network-country
    #:network-netname
    #:network-description
    #:network-announcedprefixes
    #:network-upstreams
    #:network-peers
    #:asn
    #:MAKE-asn
    #:COPY-asn
    #:asn-P
    #:+asn-WIRE-FIELDS+
    #:asn-id
    #:asn-rev
    #:asn-dataset
    #:asn-dtype
    #:asn-schemaversion
    #:asn-externalids
    #:asn-aliases
    #:asn-sources
    #:asn-sourceurls
    #:asn-sourcerecordids
    #:asn-sourcekinds
    #:asn-sourcelicense
    #:asn-sourceterms
    #:asn-sourceretrievedat
    #:asn-collectedat
    #:asn-observedat
    #:asn-firstseenat
    #:asn-lastseenat
    #:asn-createdat
    #:asn-updatedat
    #:asn-validfrom
    #:asn-validuntil
    #:asn-expiresat
    #:asn-collector
    #:asn-collectorversion
    #:asn-collectionmethod
    #:asn-collectionstatus
    #:asn-runid
    #:asn-correlationid
    #:asn-causationid
    #:asn-parentid
    #:asn-rootid
    #:asn-confidence
    #:asn-confidencebasis
    #:asn-qualityscore
    #:asn-completenessscore
    #:asn-verificationstatus
    #:asn-verifiedat
    #:asn-verifiedby
    #:asn-provenance
    #:asn-chainofcustody
    #:asn-transformhistory
    #:asn-labels
    #:asn-tags
    #:asn-topics
    #:asn-language
    #:asn-jurisdiction
    #:asn-countrycode
    #:asn-regioncode
    #:asn-timezone
    #:asn-sensitivity
    #:asn-visibility
    #:asn-owner
    #:asn-accesscontrol
    #:asn-legalbasis
    #:asn-retentionpolicy
    #:asn-contenttype
    #:asn-encoding
    #:asn-sizebytes
    #:asn-contenthash
    #:asn-hashalgorithm
    #:asn-normalizedhash
    #:asn-raw
    #:asn-rawcontent
    #:asn-notes
    #:asn-deleted
    #:asn-tombstonereason
    #:asn-extensions
    #:asn-name
    #:asn-org
    #:asn-country
    #:asn-rir
    #:asn-registry
    #:asn-prefixes
    #:asn-upstreams
    #:asn-peers
    #:host
    #:MAKE-host
    #:COPY-host
    #:host-P
    #:+host-WIRE-FIELDS+
    #:host-id
    #:host-rev
    #:host-dataset
    #:host-dtype
    #:host-schemaversion
    #:host-externalids
    #:host-aliases
    #:host-sources
    #:host-sourceurls
    #:host-sourcerecordids
    #:host-sourcekinds
    #:host-sourcelicense
    #:host-sourceterms
    #:host-sourceretrievedat
    #:host-collectedat
    #:host-observedat
    #:host-firstseenat
    #:host-lastseenat
    #:host-createdat
    #:host-updatedat
    #:host-validfrom
    #:host-validuntil
    #:host-expiresat
    #:host-collector
    #:host-collectorversion
    #:host-collectionmethod
    #:host-collectionstatus
    #:host-runid
    #:host-correlationid
    #:host-causationid
    #:host-parentid
    #:host-rootid
    #:host-confidence
    #:host-confidencebasis
    #:host-qualityscore
    #:host-completenessscore
    #:host-verificationstatus
    #:host-verifiedat
    #:host-verifiedby
    #:host-provenance
    #:host-chainofcustody
    #:host-transformhistory
    #:host-labels
    #:host-tags
    #:host-topics
    #:host-language
    #:host-jurisdiction
    #:host-countrycode
    #:host-regioncode
    #:host-timezone
    #:host-sensitivity
    #:host-visibility
    #:host-owner
    #:host-accesscontrol
    #:host-legalbasis
    #:host-retentionpolicy
    #:host-contenttype
    #:host-encoding
    #:host-sizebytes
    #:host-contenthash
    #:host-hashalgorithm
    #:host-normalizedhash
    #:host-raw
    #:host-rawcontent
    #:host-notes
    #:host-deleted
    #:host-tombstonereason
    #:host-extensions
    #:host-hostname
    #:host-hostnames
    #:host-ip
    #:host-ipversion
    #:host-mac
    #:host-os
    #:host-osversion
    #:host-devicetype
    #:host-vendor
    #:host-network
    #:host-asn
    #:host-geo
    #:host-ports
    #:host-services
    #:host-domains
    #:host-certificates
    #:host-cloud
    #:host-virtualization
    #:host-alive
    #:host-lastprobedat
    #:url
    #:MAKE-url
    #:COPY-url
    #:url-P
    #:+url-WIRE-FIELDS+
    #:url-id
    #:url-rev
    #:url-dataset
    #:url-dtype
    #:url-schemaversion
    #:url-externalids
    #:url-aliases
    #:url-sources
    #:url-sourceurls
    #:url-sourcerecordids
    #:url-sourcekinds
    #:url-sourcelicense
    #:url-sourceterms
    #:url-sourceretrievedat
    #:url-collectedat
    #:url-observedat
    #:url-firstseenat
    #:url-lastseenat
    #:url-createdat
    #:url-updatedat
    #:url-validfrom
    #:url-validuntil
    #:url-expiresat
    #:url-collector
    #:url-collectorversion
    #:url-collectionmethod
    #:url-collectionstatus
    #:url-runid
    #:url-correlationid
    #:url-causationid
    #:url-parentid
    #:url-rootid
    #:url-confidence
    #:url-confidencebasis
    #:url-qualityscore
    #:url-completenessscore
    #:url-verificationstatus
    #:url-verifiedat
    #:url-verifiedby
    #:url-provenance
    #:url-chainofcustody
    #:url-transformhistory
    #:url-labels
    #:url-tags
    #:url-topics
    #:url-language
    #:url-jurisdiction
    #:url-countrycode
    #:url-regioncode
    #:url-timezone
    #:url-sensitivity
    #:url-visibility
    #:url-owner
    #:url-accesscontrol
    #:url-legalbasis
    #:url-retentionpolicy
    #:url-contenttype
    #:url-encoding
    #:url-sizebytes
    #:url-contenthash
    #:url-hashalgorithm
    #:url-normalizedhash
    #:url-raw
    #:url-rawcontent
    #:url-notes
    #:url-deleted
    #:url-tombstonereason
    #:url-extensions
    #:url-url
    #:url-scheme
    #:url-username
    #:url-host
    #:url-port
    #:url-path
    #:url-query
    #:url-fragment
    #:url-canonicalurl
    #:url-finalurl
    #:url-statuscode
    #:url-method
    #:url-requestheaders
    #:url-responseheaders
    #:url-content
    #:url-contenttitle
    #:url-contentlength
    #:url-technologies
    #:url-redirectchain
    #:url-screenshot
    #:url-fetchedat
    #:breach
    #:MAKE-breach
    #:COPY-breach
    #:breach-P
    #:+breach-WIRE-FIELDS+
    #:breach-id
    #:breach-rev
    #:breach-dataset
    #:breach-dtype
    #:breach-schemaversion
    #:breach-externalids
    #:breach-aliases
    #:breach-sources
    #:breach-sourceurls
    #:breach-sourcerecordids
    #:breach-sourcekinds
    #:breach-sourcelicense
    #:breach-sourceterms
    #:breach-sourceretrievedat
    #:breach-collectedat
    #:breach-observedat
    #:breach-firstseenat
    #:breach-lastseenat
    #:breach-createdat
    #:breach-updatedat
    #:breach-validfrom
    #:breach-validuntil
    #:breach-expiresat
    #:breach-collector
    #:breach-collectorversion
    #:breach-collectionmethod
    #:breach-collectionstatus
    #:breach-runid
    #:breach-correlationid
    #:breach-causationid
    #:breach-parentid
    #:breach-rootid
    #:breach-confidence
    #:breach-confidencebasis
    #:breach-qualityscore
    #:breach-completenessscore
    #:breach-verificationstatus
    #:breach-verifiedat
    #:breach-verifiedby
    #:breach-provenance
    #:breach-chainofcustody
    #:breach-transformhistory
    #:breach-labels
    #:breach-tags
    #:breach-topics
    #:breach-language
    #:breach-jurisdiction
    #:breach-countrycode
    #:breach-regioncode
    #:breach-timezone
    #:breach-sensitivity
    #:breach-visibility
    #:breach-owner
    #:breach-accesscontrol
    #:breach-legalbasis
    #:breach-retentionpolicy
    #:breach-contenttype
    #:breach-encoding
    #:breach-sizebytes
    #:breach-contenthash
    #:breach-hashalgorithm
    #:breach-normalizedhash
    #:breach-raw
    #:breach-rawcontent
    #:breach-notes
    #:breach-deleted
    #:breach-tombstonereason
    #:breach-extensions
    #:breach-name
    #:breach-total
    #:breach-description
    #:breach-url
    #:breach-breachedat
    #:breach-publishedat
    #:breach-dataclasses
    #:breach-affectedorganizations
    #:breach-affectedidentifiers
    #:breach-verified
    #:breach-sensitive
    #:email
    #:MAKE-email
    #:COPY-email
    #:email-P
    #:+email-WIRE-FIELDS+
    #:email-id
    #:email-rev
    #:email-dataset
    #:email-dtype
    #:email-schemaversion
    #:email-externalids
    #:email-aliases
    #:email-sources
    #:email-sourceurls
    #:email-sourcerecordids
    #:email-sourcekinds
    #:email-sourcelicense
    #:email-sourceterms
    #:email-sourceretrievedat
    #:email-collectedat
    #:email-observedat
    #:email-firstseenat
    #:email-lastseenat
    #:email-createdat
    #:email-updatedat
    #:email-validfrom
    #:email-validuntil
    #:email-expiresat
    #:email-collector
    #:email-collectorversion
    #:email-collectionmethod
    #:email-collectionstatus
    #:email-runid
    #:email-correlationid
    #:email-causationid
    #:email-parentid
    #:email-rootid
    #:email-confidence
    #:email-confidencebasis
    #:email-qualityscore
    #:email-completenessscore
    #:email-verificationstatus
    #:email-verifiedat
    #:email-verifiedby
    #:email-provenance
    #:email-chainofcustody
    #:email-transformhistory
    #:email-labels
    #:email-tags
    #:email-topics
    #:email-language
    #:email-jurisdiction
    #:email-countrycode
    #:email-regioncode
    #:email-timezone
    #:email-sensitivity
    #:email-visibility
    #:email-owner
    #:email-accesscontrol
    #:email-legalbasis
    #:email-retentionpolicy
    #:email-contenttype
    #:email-encoding
    #:email-sizebytes
    #:email-contenthash
    #:email-hashalgorithm
    #:email-normalizedhash
    #:email-raw
    #:email-rawcontent
    #:email-notes
    #:email-deleted
    #:email-tombstonereason
    #:email-extensions
    #:email-user
    #:email-domain
    #:email-displayname
    #:email-password
    #:email-passwordhash
    #:email-hashtype
    #:email-breaches
    #:email-deliverable
    #:email-disposable
    #:email-roleaccount
    #:email-catchall
    #:email-mxvalid
    #:email-provider
    #:email-lastverifiedat
    #:email-message
    #:MAKE-email-message
    #:COPY-email-message
    #:email-message-P
    #:+email-message-WIRE-FIELDS+
    #:email-message-id
    #:email-message-rev
    #:email-message-dataset
    #:email-message-dtype
    #:email-message-schemaversion
    #:email-message-externalids
    #:email-message-aliases
    #:email-message-sources
    #:email-message-sourceurls
    #:email-message-sourcerecordids
    #:email-message-sourcekinds
    #:email-message-sourcelicense
    #:email-message-sourceterms
    #:email-message-sourceretrievedat
    #:email-message-collectedat
    #:email-message-observedat
    #:email-message-firstseenat
    #:email-message-lastseenat
    #:email-message-createdat
    #:email-message-updatedat
    #:email-message-validfrom
    #:email-message-validuntil
    #:email-message-expiresat
    #:email-message-collector
    #:email-message-collectorversion
    #:email-message-collectionmethod
    #:email-message-collectionstatus
    #:email-message-runid
    #:email-message-correlationid
    #:email-message-causationid
    #:email-message-parentid
    #:email-message-rootid
    #:email-message-confidence
    #:email-message-confidencebasis
    #:email-message-qualityscore
    #:email-message-completenessscore
    #:email-message-verificationstatus
    #:email-message-verifiedat
    #:email-message-verifiedby
    #:email-message-provenance
    #:email-message-chainofcustody
    #:email-message-transformhistory
    #:email-message-labels
    #:email-message-tags
    #:email-message-topics
    #:email-message-language
    #:email-message-jurisdiction
    #:email-message-countrycode
    #:email-message-regioncode
    #:email-message-timezone
    #:email-message-sensitivity
    #:email-message-visibility
    #:email-message-owner
    #:email-message-accesscontrol
    #:email-message-legalbasis
    #:email-message-retentionpolicy
    #:email-message-contenttype
    #:email-message-encoding
    #:email-message-sizebytes
    #:email-message-contenthash
    #:email-message-hashalgorithm
    #:email-message-normalizedhash
    #:email-message-raw
    #:email-message-rawcontent
    #:email-message-notes
    #:email-message-deleted
    #:email-message-tombstonereason
    #:email-message-extensions
    #:email-message-messageid
    #:email-message-threadid
    #:email-message-subject
    #:email-message-body
    #:email-message-bodyhtml
    #:email-message-to
    #:email-message-from
    #:email-message-replyto
    #:email-message-cc
    #:email-message-bcc
    #:email-message-headers
    #:email-message-attachments
    #:email-message-sentat
    #:email-message-receivedat
    #:email-message-inreplyto
    #:email-message-references
    #:email-message-mailbox
    #:email-message-flags
    #:user
    #:MAKE-user
    #:COPY-user
    #:user-P
    #:+user-WIRE-FIELDS+
    #:user-id
    #:user-rev
    #:user-dataset
    #:user-dtype
    #:user-schemaversion
    #:user-externalids
    #:user-aliases
    #:user-sources
    #:user-sourceurls
    #:user-sourcerecordids
    #:user-sourcekinds
    #:user-sourcelicense
    #:user-sourceterms
    #:user-sourceretrievedat
    #:user-collectedat
    #:user-observedat
    #:user-firstseenat
    #:user-lastseenat
    #:user-createdat
    #:user-updatedat
    #:user-validfrom
    #:user-validuntil
    #:user-expiresat
    #:user-collector
    #:user-collectorversion
    #:user-collectionmethod
    #:user-collectionstatus
    #:user-runid
    #:user-correlationid
    #:user-causationid
    #:user-parentid
    #:user-rootid
    #:user-confidence
    #:user-confidencebasis
    #:user-qualityscore
    #:user-completenessscore
    #:user-verificationstatus
    #:user-verifiedat
    #:user-verifiedby
    #:user-provenance
    #:user-chainofcustody
    #:user-transformhistory
    #:user-labels
    #:user-tags
    #:user-topics
    #:user-language
    #:user-jurisdiction
    #:user-countrycode
    #:user-regioncode
    #:user-timezone
    #:user-sensitivity
    #:user-visibility
    #:user-owner
    #:user-accesscontrol
    #:user-legalbasis
    #:user-retentionpolicy
    #:user-contenttype
    #:user-encoding
    #:user-sizebytes
    #:user-contenthash
    #:user-hashalgorithm
    #:user-normalizedhash
    #:user-raw
    #:user-rawcontent
    #:user-notes
    #:user-deleted
    #:user-tombstonereason
    #:user-extensions
    #:user-url
    #:user-username
    #:user-displayname
    #:user-name
    #:user-platform
    #:user-platformuserid
    #:user-bio
    #:user-avatar
    #:user-banner
    #:user-createdonplatformat
    #:user-followerscount
    #:user-followingcount
    #:user-postcount
    #:user-verified
    #:user-private
    #:user-suspended
    #:user-location
    #:user-website
    #:user-emails
    #:user-phones
    #:user-misc
    #:phone
    #:MAKE-phone
    #:COPY-phone
    #:phone-P
    #:+phone-WIRE-FIELDS+
    #:phone-id
    #:phone-rev
    #:phone-dataset
    #:phone-dtype
    #:phone-schemaversion
    #:phone-externalids
    #:phone-aliases
    #:phone-sources
    #:phone-sourceurls
    #:phone-sourcerecordids
    #:phone-sourcekinds
    #:phone-sourcelicense
    #:phone-sourceterms
    #:phone-sourceretrievedat
    #:phone-collectedat
    #:phone-observedat
    #:phone-firstseenat
    #:phone-lastseenat
    #:phone-createdat
    #:phone-updatedat
    #:phone-validfrom
    #:phone-validuntil
    #:phone-expiresat
    #:phone-collector
    #:phone-collectorversion
    #:phone-collectionmethod
    #:phone-collectionstatus
    #:phone-runid
    #:phone-correlationid
    #:phone-causationid
    #:phone-parentid
    #:phone-rootid
    #:phone-confidence
    #:phone-confidencebasis
    #:phone-qualityscore
    #:phone-completenessscore
    #:phone-verificationstatus
    #:phone-verifiedat
    #:phone-verifiedby
    #:phone-provenance
    #:phone-chainofcustody
    #:phone-transformhistory
    #:phone-labels
    #:phone-tags
    #:phone-topics
    #:phone-language
    #:phone-jurisdiction
    #:phone-countrycode
    #:phone-regioncode
    #:phone-timezone
    #:phone-sensitivity
    #:phone-visibility
    #:phone-owner
    #:phone-accesscontrol
    #:phone-legalbasis
    #:phone-retentionpolicy
    #:phone-contenttype
    #:phone-encoding
    #:phone-sizebytes
    #:phone-contenthash
    #:phone-hashalgorithm
    #:phone-normalizedhash
    #:phone-raw
    #:phone-rawcontent
    #:phone-notes
    #:phone-deleted
    #:phone-tombstonereason
    #:phone-extensions
    #:phone-e164
    #:phone-nationalnumber
    #:phone-extension
    #:phone-carrier
    #:phone-status
    #:phone-phonetype
    #:phone-linetype
    #:phone-valid
    #:phone-reachable
    #:phone-ported
    #:phone-location
    #:phone-lastverifiedat
    #:geo
    #:MAKE-geo
    #:COPY-geo
    #:geo-P
    #:+geo-WIRE-FIELDS+
    #:geo-id
    #:geo-rev
    #:geo-dataset
    #:geo-dtype
    #:geo-schemaversion
    #:geo-externalids
    #:geo-aliases
    #:geo-sources
    #:geo-sourceurls
    #:geo-sourcerecordids
    #:geo-sourcekinds
    #:geo-sourcelicense
    #:geo-sourceterms
    #:geo-sourceretrievedat
    #:geo-collectedat
    #:geo-observedat
    #:geo-firstseenat
    #:geo-lastseenat
    #:geo-createdat
    #:geo-updatedat
    #:geo-validfrom
    #:geo-validuntil
    #:geo-expiresat
    #:geo-collector
    #:geo-collectorversion
    #:geo-collectionmethod
    #:geo-collectionstatus
    #:geo-runid
    #:geo-correlationid
    #:geo-causationid
    #:geo-parentid
    #:geo-rootid
    #:geo-confidence
    #:geo-confidencebasis
    #:geo-qualityscore
    #:geo-completenessscore
    #:geo-verificationstatus
    #:geo-verifiedat
    #:geo-verifiedby
    #:geo-provenance
    #:geo-chainofcustody
    #:geo-transformhistory
    #:geo-labels
    #:geo-tags
    #:geo-topics
    #:geo-language
    #:geo-jurisdiction
    #:geo-countrycode
    #:geo-regioncode
    #:geo-timezone
    #:geo-sensitivity
    #:geo-visibility
    #:geo-owner
    #:geo-accesscontrol
    #:geo-legalbasis
    #:geo-retentionpolicy
    #:geo-contenttype
    #:geo-encoding
    #:geo-sizebytes
    #:geo-contenthash
    #:geo-hashalgorithm
    #:geo-normalizedhash
    #:geo-raw
    #:geo-rawcontent
    #:geo-notes
    #:geo-deleted
    #:geo-tombstonereason
    #:geo-extensions
    #:geo-geometrytype
    #:geo-coordinatereferencesystem
    #:geo-boundingbox
    #:geo-accuracymeters
    #:geo-geohash
    #:geo-placename
    #:geo-placekind
    #:geo-point
    #:MAKE-geo-point
    #:COPY-geo-point
    #:geo-point-P
    #:+geo-point-WIRE-FIELDS+
    #:geo-point-id
    #:geo-point-rev
    #:geo-point-dataset
    #:geo-point-dtype
    #:geo-point-schemaversion
    #:geo-point-externalids
    #:geo-point-aliases
    #:geo-point-sources
    #:geo-point-sourceurls
    #:geo-point-sourcerecordids
    #:geo-point-sourcekinds
    #:geo-point-sourcelicense
    #:geo-point-sourceterms
    #:geo-point-sourceretrievedat
    #:geo-point-collectedat
    #:geo-point-observedat
    #:geo-point-firstseenat
    #:geo-point-lastseenat
    #:geo-point-createdat
    #:geo-point-updatedat
    #:geo-point-validfrom
    #:geo-point-validuntil
    #:geo-point-expiresat
    #:geo-point-collector
    #:geo-point-collectorversion
    #:geo-point-collectionmethod
    #:geo-point-collectionstatus
    #:geo-point-runid
    #:geo-point-correlationid
    #:geo-point-causationid
    #:geo-point-parentid
    #:geo-point-rootid
    #:geo-point-confidence
    #:geo-point-confidencebasis
    #:geo-point-qualityscore
    #:geo-point-completenessscore
    #:geo-point-verificationstatus
    #:geo-point-verifiedat
    #:geo-point-verifiedby
    #:geo-point-provenance
    #:geo-point-chainofcustody
    #:geo-point-transformhistory
    #:geo-point-labels
    #:geo-point-tags
    #:geo-point-topics
    #:geo-point-language
    #:geo-point-jurisdiction
    #:geo-point-countrycode
    #:geo-point-regioncode
    #:geo-point-timezone
    #:geo-point-sensitivity
    #:geo-point-visibility
    #:geo-point-owner
    #:geo-point-accesscontrol
    #:geo-point-legalbasis
    #:geo-point-retentionpolicy
    #:geo-point-contenttype
    #:geo-point-encoding
    #:geo-point-sizebytes
    #:geo-point-contenthash
    #:geo-point-hashalgorithm
    #:geo-point-normalizedhash
    #:geo-point-raw
    #:geo-point-rawcontent
    #:geo-point-notes
    #:geo-point-deleted
    #:geo-point-tombstonereason
    #:geo-point-extensions
    #:geo-point-geometrytype
    #:geo-point-coordinatereferencesystem
    #:geo-point-boundingbox
    #:geo-point-accuracymeters
    #:geo-point-geohash
    #:geo-point-placename
    #:geo-point-placekind
    #:geo-point-longitude
    #:geo-point-latitude
    #:geo-point-altitudemeters
    #:geo-line-string
    #:MAKE-geo-line-string
    #:COPY-geo-line-string
    #:geo-line-string-P
    #:+geo-line-string-WIRE-FIELDS+
    #:geo-line-string-id
    #:geo-line-string-rev
    #:geo-line-string-dataset
    #:geo-line-string-dtype
    #:geo-line-string-schemaversion
    #:geo-line-string-externalids
    #:geo-line-string-aliases
    #:geo-line-string-sources
    #:geo-line-string-sourceurls
    #:geo-line-string-sourcerecordids
    #:geo-line-string-sourcekinds
    #:geo-line-string-sourcelicense
    #:geo-line-string-sourceterms
    #:geo-line-string-sourceretrievedat
    #:geo-line-string-collectedat
    #:geo-line-string-observedat
    #:geo-line-string-firstseenat
    #:geo-line-string-lastseenat
    #:geo-line-string-createdat
    #:geo-line-string-updatedat
    #:geo-line-string-validfrom
    #:geo-line-string-validuntil
    #:geo-line-string-expiresat
    #:geo-line-string-collector
    #:geo-line-string-collectorversion
    #:geo-line-string-collectionmethod
    #:geo-line-string-collectionstatus
    #:geo-line-string-runid
    #:geo-line-string-correlationid
    #:geo-line-string-causationid
    #:geo-line-string-parentid
    #:geo-line-string-rootid
    #:geo-line-string-confidence
    #:geo-line-string-confidencebasis
    #:geo-line-string-qualityscore
    #:geo-line-string-completenessscore
    #:geo-line-string-verificationstatus
    #:geo-line-string-verifiedat
    #:geo-line-string-verifiedby
    #:geo-line-string-provenance
    #:geo-line-string-chainofcustody
    #:geo-line-string-transformhistory
    #:geo-line-string-labels
    #:geo-line-string-tags
    #:geo-line-string-topics
    #:geo-line-string-language
    #:geo-line-string-jurisdiction
    #:geo-line-string-countrycode
    #:geo-line-string-regioncode
    #:geo-line-string-timezone
    #:geo-line-string-sensitivity
    #:geo-line-string-visibility
    #:geo-line-string-owner
    #:geo-line-string-accesscontrol
    #:geo-line-string-legalbasis
    #:geo-line-string-retentionpolicy
    #:geo-line-string-contenttype
    #:geo-line-string-encoding
    #:geo-line-string-sizebytes
    #:geo-line-string-contenthash
    #:geo-line-string-hashalgorithm
    #:geo-line-string-normalizedhash
    #:geo-line-string-raw
    #:geo-line-string-rawcontent
    #:geo-line-string-notes
    #:geo-line-string-deleted
    #:geo-line-string-tombstonereason
    #:geo-line-string-extensions
    #:geo-line-string-geometrytype
    #:geo-line-string-coordinatereferencesystem
    #:geo-line-string-boundingbox
    #:geo-line-string-accuracymeters
    #:geo-line-string-geohash
    #:geo-line-string-placename
    #:geo-line-string-placekind
    #:geo-line-string-points
    #:geo-polygon
    #:MAKE-geo-polygon
    #:COPY-geo-polygon
    #:geo-polygon-P
    #:+geo-polygon-WIRE-FIELDS+
    #:geo-polygon-id
    #:geo-polygon-rev
    #:geo-polygon-dataset
    #:geo-polygon-dtype
    #:geo-polygon-schemaversion
    #:geo-polygon-externalids
    #:geo-polygon-aliases
    #:geo-polygon-sources
    #:geo-polygon-sourceurls
    #:geo-polygon-sourcerecordids
    #:geo-polygon-sourcekinds
    #:geo-polygon-sourcelicense
    #:geo-polygon-sourceterms
    #:geo-polygon-sourceretrievedat
    #:geo-polygon-collectedat
    #:geo-polygon-observedat
    #:geo-polygon-firstseenat
    #:geo-polygon-lastseenat
    #:geo-polygon-createdat
    #:geo-polygon-updatedat
    #:geo-polygon-validfrom
    #:geo-polygon-validuntil
    #:geo-polygon-expiresat
    #:geo-polygon-collector
    #:geo-polygon-collectorversion
    #:geo-polygon-collectionmethod
    #:geo-polygon-collectionstatus
    #:geo-polygon-runid
    #:geo-polygon-correlationid
    #:geo-polygon-causationid
    #:geo-polygon-parentid
    #:geo-polygon-rootid
    #:geo-polygon-confidence
    #:geo-polygon-confidencebasis
    #:geo-polygon-qualityscore
    #:geo-polygon-completenessscore
    #:geo-polygon-verificationstatus
    #:geo-polygon-verifiedat
    #:geo-polygon-verifiedby
    #:geo-polygon-provenance
    #:geo-polygon-chainofcustody
    #:geo-polygon-transformhistory
    #:geo-polygon-labels
    #:geo-polygon-tags
    #:geo-polygon-topics
    #:geo-polygon-language
    #:geo-polygon-jurisdiction
    #:geo-polygon-countrycode
    #:geo-polygon-regioncode
    #:geo-polygon-timezone
    #:geo-polygon-sensitivity
    #:geo-polygon-visibility
    #:geo-polygon-owner
    #:geo-polygon-accesscontrol
    #:geo-polygon-legalbasis
    #:geo-polygon-retentionpolicy
    #:geo-polygon-contenttype
    #:geo-polygon-encoding
    #:geo-polygon-sizebytes
    #:geo-polygon-contenthash
    #:geo-polygon-hashalgorithm
    #:geo-polygon-normalizedhash
    #:geo-polygon-raw
    #:geo-polygon-rawcontent
    #:geo-polygon-notes
    #:geo-polygon-deleted
    #:geo-polygon-tombstonereason
    #:geo-polygon-extensions
    #:geo-polygon-geometrytype
    #:geo-polygon-coordinatereferencesystem
    #:geo-polygon-boundingbox
    #:geo-polygon-accuracymeters
    #:geo-polygon-geohash
    #:geo-polygon-placename
    #:geo-polygon-placekind
    #:geo-polygon-rings
    #:geo-multi-point
    #:MAKE-geo-multi-point
    #:COPY-geo-multi-point
    #:geo-multi-point-P
    #:+geo-multi-point-WIRE-FIELDS+
    #:geo-multi-point-id
    #:geo-multi-point-rev
    #:geo-multi-point-dataset
    #:geo-multi-point-dtype
    #:geo-multi-point-schemaversion
    #:geo-multi-point-externalids
    #:geo-multi-point-aliases
    #:geo-multi-point-sources
    #:geo-multi-point-sourceurls
    #:geo-multi-point-sourcerecordids
    #:geo-multi-point-sourcekinds
    #:geo-multi-point-sourcelicense
    #:geo-multi-point-sourceterms
    #:geo-multi-point-sourceretrievedat
    #:geo-multi-point-collectedat
    #:geo-multi-point-observedat
    #:geo-multi-point-firstseenat
    #:geo-multi-point-lastseenat
    #:geo-multi-point-createdat
    #:geo-multi-point-updatedat
    #:geo-multi-point-validfrom
    #:geo-multi-point-validuntil
    #:geo-multi-point-expiresat
    #:geo-multi-point-collector
    #:geo-multi-point-collectorversion
    #:geo-multi-point-collectionmethod
    #:geo-multi-point-collectionstatus
    #:geo-multi-point-runid
    #:geo-multi-point-correlationid
    #:geo-multi-point-causationid
    #:geo-multi-point-parentid
    #:geo-multi-point-rootid
    #:geo-multi-point-confidence
    #:geo-multi-point-confidencebasis
    #:geo-multi-point-qualityscore
    #:geo-multi-point-completenessscore
    #:geo-multi-point-verificationstatus
    #:geo-multi-point-verifiedat
    #:geo-multi-point-verifiedby
    #:geo-multi-point-provenance
    #:geo-multi-point-chainofcustody
    #:geo-multi-point-transformhistory
    #:geo-multi-point-labels
    #:geo-multi-point-tags
    #:geo-multi-point-topics
    #:geo-multi-point-language
    #:geo-multi-point-jurisdiction
    #:geo-multi-point-countrycode
    #:geo-multi-point-regioncode
    #:geo-multi-point-timezone
    #:geo-multi-point-sensitivity
    #:geo-multi-point-visibility
    #:geo-multi-point-owner
    #:geo-multi-point-accesscontrol
    #:geo-multi-point-legalbasis
    #:geo-multi-point-retentionpolicy
    #:geo-multi-point-contenttype
    #:geo-multi-point-encoding
    #:geo-multi-point-sizebytes
    #:geo-multi-point-contenthash
    #:geo-multi-point-hashalgorithm
    #:geo-multi-point-normalizedhash
    #:geo-multi-point-raw
    #:geo-multi-point-rawcontent
    #:geo-multi-point-notes
    #:geo-multi-point-deleted
    #:geo-multi-point-tombstonereason
    #:geo-multi-point-extensions
    #:geo-multi-point-geometrytype
    #:geo-multi-point-coordinatereferencesystem
    #:geo-multi-point-boundingbox
    #:geo-multi-point-accuracymeters
    #:geo-multi-point-geohash
    #:geo-multi-point-placename
    #:geo-multi-point-placekind
    #:geo-multi-point-points
    #:geo-multi-line-string
    #:MAKE-geo-multi-line-string
    #:COPY-geo-multi-line-string
    #:geo-multi-line-string-P
    #:+geo-multi-line-string-WIRE-FIELDS+
    #:geo-multi-line-string-id
    #:geo-multi-line-string-rev
    #:geo-multi-line-string-dataset
    #:geo-multi-line-string-dtype
    #:geo-multi-line-string-schemaversion
    #:geo-multi-line-string-externalids
    #:geo-multi-line-string-aliases
    #:geo-multi-line-string-sources
    #:geo-multi-line-string-sourceurls
    #:geo-multi-line-string-sourcerecordids
    #:geo-multi-line-string-sourcekinds
    #:geo-multi-line-string-sourcelicense
    #:geo-multi-line-string-sourceterms
    #:geo-multi-line-string-sourceretrievedat
    #:geo-multi-line-string-collectedat
    #:geo-multi-line-string-observedat
    #:geo-multi-line-string-firstseenat
    #:geo-multi-line-string-lastseenat
    #:geo-multi-line-string-createdat
    #:geo-multi-line-string-updatedat
    #:geo-multi-line-string-validfrom
    #:geo-multi-line-string-validuntil
    #:geo-multi-line-string-expiresat
    #:geo-multi-line-string-collector
    #:geo-multi-line-string-collectorversion
    #:geo-multi-line-string-collectionmethod
    #:geo-multi-line-string-collectionstatus
    #:geo-multi-line-string-runid
    #:geo-multi-line-string-correlationid
    #:geo-multi-line-string-causationid
    #:geo-multi-line-string-parentid
    #:geo-multi-line-string-rootid
    #:geo-multi-line-string-confidence
    #:geo-multi-line-string-confidencebasis
    #:geo-multi-line-string-qualityscore
    #:geo-multi-line-string-completenessscore
    #:geo-multi-line-string-verificationstatus
    #:geo-multi-line-string-verifiedat
    #:geo-multi-line-string-verifiedby
    #:geo-multi-line-string-provenance
    #:geo-multi-line-string-chainofcustody
    #:geo-multi-line-string-transformhistory
    #:geo-multi-line-string-labels
    #:geo-multi-line-string-tags
    #:geo-multi-line-string-topics
    #:geo-multi-line-string-language
    #:geo-multi-line-string-jurisdiction
    #:geo-multi-line-string-countrycode
    #:geo-multi-line-string-regioncode
    #:geo-multi-line-string-timezone
    #:geo-multi-line-string-sensitivity
    #:geo-multi-line-string-visibility
    #:geo-multi-line-string-owner
    #:geo-multi-line-string-accesscontrol
    #:geo-multi-line-string-legalbasis
    #:geo-multi-line-string-retentionpolicy
    #:geo-multi-line-string-contenttype
    #:geo-multi-line-string-encoding
    #:geo-multi-line-string-sizebytes
    #:geo-multi-line-string-contenthash
    #:geo-multi-line-string-hashalgorithm
    #:geo-multi-line-string-normalizedhash
    #:geo-multi-line-string-raw
    #:geo-multi-line-string-rawcontent
    #:geo-multi-line-string-notes
    #:geo-multi-line-string-deleted
    #:geo-multi-line-string-tombstonereason
    #:geo-multi-line-string-extensions
    #:geo-multi-line-string-geometrytype
    #:geo-multi-line-string-coordinatereferencesystem
    #:geo-multi-line-string-boundingbox
    #:geo-multi-line-string-accuracymeters
    #:geo-multi-line-string-geohash
    #:geo-multi-line-string-placename
    #:geo-multi-line-string-placekind
    #:geo-multi-line-string-lines
    #:geo-multi-polygon
    #:MAKE-geo-multi-polygon
    #:COPY-geo-multi-polygon
    #:geo-multi-polygon-P
    #:+geo-multi-polygon-WIRE-FIELDS+
    #:geo-multi-polygon-id
    #:geo-multi-polygon-rev
    #:geo-multi-polygon-dataset
    #:geo-multi-polygon-dtype
    #:geo-multi-polygon-schemaversion
    #:geo-multi-polygon-externalids
    #:geo-multi-polygon-aliases
    #:geo-multi-polygon-sources
    #:geo-multi-polygon-sourceurls
    #:geo-multi-polygon-sourcerecordids
    #:geo-multi-polygon-sourcekinds
    #:geo-multi-polygon-sourcelicense
    #:geo-multi-polygon-sourceterms
    #:geo-multi-polygon-sourceretrievedat
    #:geo-multi-polygon-collectedat
    #:geo-multi-polygon-observedat
    #:geo-multi-polygon-firstseenat
    #:geo-multi-polygon-lastseenat
    #:geo-multi-polygon-createdat
    #:geo-multi-polygon-updatedat
    #:geo-multi-polygon-validfrom
    #:geo-multi-polygon-validuntil
    #:geo-multi-polygon-expiresat
    #:geo-multi-polygon-collector
    #:geo-multi-polygon-collectorversion
    #:geo-multi-polygon-collectionmethod
    #:geo-multi-polygon-collectionstatus
    #:geo-multi-polygon-runid
    #:geo-multi-polygon-correlationid
    #:geo-multi-polygon-causationid
    #:geo-multi-polygon-parentid
    #:geo-multi-polygon-rootid
    #:geo-multi-polygon-confidence
    #:geo-multi-polygon-confidencebasis
    #:geo-multi-polygon-qualityscore
    #:geo-multi-polygon-completenessscore
    #:geo-multi-polygon-verificationstatus
    #:geo-multi-polygon-verifiedat
    #:geo-multi-polygon-verifiedby
    #:geo-multi-polygon-provenance
    #:geo-multi-polygon-chainofcustody
    #:geo-multi-polygon-transformhistory
    #:geo-multi-polygon-labels
    #:geo-multi-polygon-tags
    #:geo-multi-polygon-topics
    #:geo-multi-polygon-language
    #:geo-multi-polygon-jurisdiction
    #:geo-multi-polygon-countrycode
    #:geo-multi-polygon-regioncode
    #:geo-multi-polygon-timezone
    #:geo-multi-polygon-sensitivity
    #:geo-multi-polygon-visibility
    #:geo-multi-polygon-owner
    #:geo-multi-polygon-accesscontrol
    #:geo-multi-polygon-legalbasis
    #:geo-multi-polygon-retentionpolicy
    #:geo-multi-polygon-contenttype
    #:geo-multi-polygon-encoding
    #:geo-multi-polygon-sizebytes
    #:geo-multi-polygon-contenthash
    #:geo-multi-polygon-hashalgorithm
    #:geo-multi-polygon-normalizedhash
    #:geo-multi-polygon-raw
    #:geo-multi-polygon-rawcontent
    #:geo-multi-polygon-notes
    #:geo-multi-polygon-deleted
    #:geo-multi-polygon-tombstonereason
    #:geo-multi-polygon-extensions
    #:geo-multi-polygon-geometrytype
    #:geo-multi-polygon-coordinatereferencesystem
    #:geo-multi-polygon-boundingbox
    #:geo-multi-polygon-accuracymeters
    #:geo-multi-polygon-geohash
    #:geo-multi-polygon-placename
    #:geo-multi-polygon-placekind
    #:geo-multi-polygon-polygons
    #:geo-geometry-collection
    #:MAKE-geo-geometry-collection
    #:COPY-geo-geometry-collection
    #:geo-geometry-collection-P
    #:+geo-geometry-collection-WIRE-FIELDS+
    #:geo-geometry-collection-id
    #:geo-geometry-collection-rev
    #:geo-geometry-collection-dataset
    #:geo-geometry-collection-dtype
    #:geo-geometry-collection-schemaversion
    #:geo-geometry-collection-externalids
    #:geo-geometry-collection-aliases
    #:geo-geometry-collection-sources
    #:geo-geometry-collection-sourceurls
    #:geo-geometry-collection-sourcerecordids
    #:geo-geometry-collection-sourcekinds
    #:geo-geometry-collection-sourcelicense
    #:geo-geometry-collection-sourceterms
    #:geo-geometry-collection-sourceretrievedat
    #:geo-geometry-collection-collectedat
    #:geo-geometry-collection-observedat
    #:geo-geometry-collection-firstseenat
    #:geo-geometry-collection-lastseenat
    #:geo-geometry-collection-createdat
    #:geo-geometry-collection-updatedat
    #:geo-geometry-collection-validfrom
    #:geo-geometry-collection-validuntil
    #:geo-geometry-collection-expiresat
    #:geo-geometry-collection-collector
    #:geo-geometry-collection-collectorversion
    #:geo-geometry-collection-collectionmethod
    #:geo-geometry-collection-collectionstatus
    #:geo-geometry-collection-runid
    #:geo-geometry-collection-correlationid
    #:geo-geometry-collection-causationid
    #:geo-geometry-collection-parentid
    #:geo-geometry-collection-rootid
    #:geo-geometry-collection-confidence
    #:geo-geometry-collection-confidencebasis
    #:geo-geometry-collection-qualityscore
    #:geo-geometry-collection-completenessscore
    #:geo-geometry-collection-verificationstatus
    #:geo-geometry-collection-verifiedat
    #:geo-geometry-collection-verifiedby
    #:geo-geometry-collection-provenance
    #:geo-geometry-collection-chainofcustody
    #:geo-geometry-collection-transformhistory
    #:geo-geometry-collection-labels
    #:geo-geometry-collection-tags
    #:geo-geometry-collection-topics
    #:geo-geometry-collection-language
    #:geo-geometry-collection-jurisdiction
    #:geo-geometry-collection-countrycode
    #:geo-geometry-collection-regioncode
    #:geo-geometry-collection-timezone
    #:geo-geometry-collection-sensitivity
    #:geo-geometry-collection-visibility
    #:geo-geometry-collection-owner
    #:geo-geometry-collection-accesscontrol
    #:geo-geometry-collection-legalbasis
    #:geo-geometry-collection-retentionpolicy
    #:geo-geometry-collection-contenttype
    #:geo-geometry-collection-encoding
    #:geo-geometry-collection-sizebytes
    #:geo-geometry-collection-contenthash
    #:geo-geometry-collection-hashalgorithm
    #:geo-geometry-collection-normalizedhash
    #:geo-geometry-collection-raw
    #:geo-geometry-collection-rawcontent
    #:geo-geometry-collection-notes
    #:geo-geometry-collection-deleted
    #:geo-geometry-collection-tombstonereason
    #:geo-geometry-collection-extensions
    #:geo-geometry-collection-geometrytype
    #:geo-geometry-collection-coordinatereferencesystem
    #:geo-geometry-collection-boundingbox
    #:geo-geometry-collection-accuracymeters
    #:geo-geometry-collection-geohash
    #:geo-geometry-collection-placename
    #:geo-geometry-collection-placekind
    #:geo-geometry-collection-geometries
    #:location
    #:MAKE-location
    #:COPY-location
    #:location-P
    #:+location-WIRE-FIELDS+
    #:location-id
    #:location-rev
    #:location-dataset
    #:location-dtype
    #:location-schemaversion
    #:location-externalids
    #:location-aliases
    #:location-sources
    #:location-sourceurls
    #:location-sourcerecordids
    #:location-sourcekinds
    #:location-sourcelicense
    #:location-sourceterms
    #:location-sourceretrievedat
    #:location-collectedat
    #:location-observedat
    #:location-firstseenat
    #:location-lastseenat
    #:location-createdat
    #:location-updatedat
    #:location-validfrom
    #:location-validuntil
    #:location-expiresat
    #:location-collector
    #:location-collectorversion
    #:location-collectionmethod
    #:location-collectionstatus
    #:location-runid
    #:location-correlationid
    #:location-causationid
    #:location-parentid
    #:location-rootid
    #:location-confidence
    #:location-confidencebasis
    #:location-qualityscore
    #:location-completenessscore
    #:location-verificationstatus
    #:location-verifiedat
    #:location-verifiedby
    #:location-provenance
    #:location-chainofcustody
    #:location-transformhistory
    #:location-labels
    #:location-tags
    #:location-topics
    #:location-language
    #:location-jurisdiction
    #:location-countrycode
    #:location-regioncode
    #:location-timezone
    #:location-sensitivity
    #:location-visibility
    #:location-owner
    #:location-accesscontrol
    #:location-legalbasis
    #:location-retentionpolicy
    #:location-contenttype
    #:location-encoding
    #:location-sizebytes
    #:location-contenthash
    #:location-hashalgorithm
    #:location-normalizedhash
    #:location-raw
    #:location-rawcontent
    #:location-notes
    #:location-deleted
    #:location-tombstonereason
    #:location-extensions
    #:location-name
    #:location-geometry
    #:location-address
    #:location-locationtype
    #:address
    #:MAKE-address
    #:COPY-address
    #:address-P
    #:+address-WIRE-FIELDS+
    #:address-id
    #:address-rev
    #:address-dataset
    #:address-dtype
    #:address-schemaversion
    #:address-externalids
    #:address-aliases
    #:address-sources
    #:address-sourceurls
    #:address-sourcerecordids
    #:address-sourcekinds
    #:address-sourcelicense
    #:address-sourceterms
    #:address-sourceretrievedat
    #:address-collectedat
    #:address-observedat
    #:address-firstseenat
    #:address-lastseenat
    #:address-createdat
    #:address-updatedat
    #:address-validfrom
    #:address-validuntil
    #:address-expiresat
    #:address-collector
    #:address-collectorversion
    #:address-collectionmethod
    #:address-collectionstatus
    #:address-runid
    #:address-correlationid
    #:address-causationid
    #:address-parentid
    #:address-rootid
    #:address-confidence
    #:address-confidencebasis
    #:address-qualityscore
    #:address-completenessscore
    #:address-verificationstatus
    #:address-verifiedat
    #:address-verifiedby
    #:address-provenance
    #:address-chainofcustody
    #:address-transformhistory
    #:address-labels
    #:address-tags
    #:address-topics
    #:address-language
    #:address-jurisdiction
    #:address-countrycode
    #:address-regioncode
    #:address-timezone
    #:address-sensitivity
    #:address-visibility
    #:address-owner
    #:address-accesscontrol
    #:address-legalbasis
    #:address-retentionpolicy
    #:address-contenttype
    #:address-encoding
    #:address-sizebytes
    #:address-contenthash
    #:address-hashalgorithm
    #:address-normalizedhash
    #:address-raw
    #:address-rawcontent
    #:address-notes
    #:address-deleted
    #:address-tombstonereason
    #:address-extensions
    #:address-formatted
    #:address-street
    #:address-street2
    #:address-unit
    #:address-city
    #:address-county
    #:address-state
    #:address-postal
    #:address-country
    #:address-addresstype
    #:address-pobox
    #:address-building
    #:address-floor
    #:address-deliverypoint
    #:address-geometry
    #:address-validated
    #:address-validationprovider
    #:mission
    #:MAKE-mission
    #:COPY-mission
    #:mission-P
    #:+mission-WIRE-FIELDS+
    #:mission-id
    #:mission-rev
    #:mission-dataset
    #:mission-dtype
    #:mission-schemaversion
    #:mission-externalids
    #:mission-aliases
    #:mission-sources
    #:mission-sourceurls
    #:mission-sourcerecordids
    #:mission-sourcekinds
    #:mission-sourcelicense
    #:mission-sourceterms
    #:mission-sourceretrievedat
    #:mission-collectedat
    #:mission-observedat
    #:mission-firstseenat
    #:mission-lastseenat
    #:mission-createdat
    #:mission-updatedat
    #:mission-validfrom
    #:mission-validuntil
    #:mission-expiresat
    #:mission-collector
    #:mission-collectorversion
    #:mission-collectionmethod
    #:mission-collectionstatus
    #:mission-runid
    #:mission-correlationid
    #:mission-causationid
    #:mission-parentid
    #:mission-rootid
    #:mission-confidence
    #:mission-confidencebasis
    #:mission-qualityscore
    #:mission-completenessscore
    #:mission-verificationstatus
    #:mission-verifiedat
    #:mission-verifiedby
    #:mission-provenance
    #:mission-chainofcustody
    #:mission-transformhistory
    #:mission-labels
    #:mission-tags
    #:mission-topics
    #:mission-language
    #:mission-jurisdiction
    #:mission-countrycode
    #:mission-regioncode
    #:mission-timezone
    #:mission-sensitivity
    #:mission-visibility
    #:mission-owner
    #:mission-accesscontrol
    #:mission-legalbasis
    #:mission-retentionpolicy
    #:mission-contenttype
    #:mission-encoding
    #:mission-sizebytes
    #:mission-contenthash
    #:mission-hashalgorithm
    #:mission-normalizedhash
    #:mission-raw
    #:mission-rawcontent
    #:mission-notes
    #:mission-deleted
    #:mission-tombstonereason
    #:mission-extensions
    #:mission-name
    #:mission-objective
    #:mission-scope
    #:mission-area
    #:mission-route
    #:mission-targets
    #:mission-geofences
    #:mission-assignedactors
    #:mission-parentmission
    #:mission-startsat
    #:mission-endsat
    #:mission-outputdataset
    #:mission-constraints
    #:mission-budget
    #:mission-statusreason
    #:mission-target
    #:MAKE-mission-target
    #:COPY-mission-target
    #:mission-target-P
    #:+mission-target-WIRE-FIELDS+
    #:mission-target-id
    #:mission-target-rev
    #:mission-target-dataset
    #:mission-target-dtype
    #:mission-target-schemaversion
    #:mission-target-externalids
    #:mission-target-aliases
    #:mission-target-sources
    #:mission-target-sourceurls
    #:mission-target-sourcerecordids
    #:mission-target-sourcekinds
    #:mission-target-sourcelicense
    #:mission-target-sourceterms
    #:mission-target-sourceretrievedat
    #:mission-target-collectedat
    #:mission-target-observedat
    #:mission-target-firstseenat
    #:mission-target-lastseenat
    #:mission-target-createdat
    #:mission-target-updatedat
    #:mission-target-validfrom
    #:mission-target-validuntil
    #:mission-target-expiresat
    #:mission-target-collector
    #:mission-target-collectorversion
    #:mission-target-collectionmethod
    #:mission-target-collectionstatus
    #:mission-target-runid
    #:mission-target-correlationid
    #:mission-target-causationid
    #:mission-target-parentid
    #:mission-target-rootid
    #:mission-target-confidence
    #:mission-target-confidencebasis
    #:mission-target-qualityscore
    #:mission-target-completenessscore
    #:mission-target-verificationstatus
    #:mission-target-verifiedat
    #:mission-target-verifiedby
    #:mission-target-provenance
    #:mission-target-chainofcustody
    #:mission-target-transformhistory
    #:mission-target-labels
    #:mission-target-tags
    #:mission-target-topics
    #:mission-target-language
    #:mission-target-jurisdiction
    #:mission-target-countrycode
    #:mission-target-regioncode
    #:mission-target-timezone
    #:mission-target-sensitivity
    #:mission-target-visibility
    #:mission-target-owner
    #:mission-target-accesscontrol
    #:mission-target-legalbasis
    #:mission-target-retentionpolicy
    #:mission-target-contenttype
    #:mission-target-encoding
    #:mission-target-sizebytes
    #:mission-target-contenthash
    #:mission-target-hashalgorithm
    #:mission-target-normalizedhash
    #:mission-target-raw
    #:mission-target-rawcontent
    #:mission-target-notes
    #:mission-target-deleted
    #:mission-target-tombstonereason
    #:mission-target-extensions
    #:mission-target-mission
    #:mission-target-subject
    #:mission-target-objective
    #:mission-target-location
    #:mission-target-geofence
    #:mission-target-routestop
    #:mission-target-priority
    #:mission-target-assignedactor
    #:mission-target-requiredcapabilities
    #:mission-target-notbefore
    #:mission-target-deadline
    #:mission-target-options
    #:mission-target-resultrefs
    #:route
    #:MAKE-route
    #:COPY-route
    #:route-P
    #:+route-WIRE-FIELDS+
    #:route-id
    #:route-rev
    #:route-dataset
    #:route-dtype
    #:route-schemaversion
    #:route-externalids
    #:route-aliases
    #:route-sources
    #:route-sourceurls
    #:route-sourcerecordids
    #:route-sourcekinds
    #:route-sourcelicense
    #:route-sourceterms
    #:route-sourceretrievedat
    #:route-collectedat
    #:route-observedat
    #:route-firstseenat
    #:route-lastseenat
    #:route-createdat
    #:route-updatedat
    #:route-validfrom
    #:route-validuntil
    #:route-expiresat
    #:route-collector
    #:route-collectorversion
    #:route-collectionmethod
    #:route-collectionstatus
    #:route-runid
    #:route-correlationid
    #:route-causationid
    #:route-parentid
    #:route-rootid
    #:route-confidence
    #:route-confidencebasis
    #:route-qualityscore
    #:route-completenessscore
    #:route-verificationstatus
    #:route-verifiedat
    #:route-verifiedby
    #:route-provenance
    #:route-chainofcustody
    #:route-transformhistory
    #:route-labels
    #:route-tags
    #:route-topics
    #:route-language
    #:route-jurisdiction
    #:route-countrycode
    #:route-regioncode
    #:route-timezone
    #:route-sensitivity
    #:route-visibility
    #:route-owner
    #:route-accesscontrol
    #:route-legalbasis
    #:route-retentionpolicy
    #:route-contenttype
    #:route-encoding
    #:route-sizebytes
    #:route-contenthash
    #:route-hashalgorithm
    #:route-normalizedhash
    #:route-raw
    #:route-rawcontent
    #:route-notes
    #:route-deleted
    #:route-tombstonereason
    #:route-extensions
    #:route-name
    #:route-geometry
    #:route-origin
    #:route-destination
    #:route-waypoints
    #:route-distancemeters
    #:route-estimateddurationseconds
    #:route-actualdurationseconds
    #:route-plannedat
    #:route-startedat
    #:route-endedat
    #:route-routingprovider
    #:route-constraints
    #:geofence
    #:MAKE-geofence
    #:COPY-geofence
    #:geofence-P
    #:+geofence-WIRE-FIELDS+
    #:geofence-id
    #:geofence-rev
    #:geofence-dataset
    #:geofence-dtype
    #:geofence-schemaversion
    #:geofence-externalids
    #:geofence-aliases
    #:geofence-sources
    #:geofence-sourceurls
    #:geofence-sourcerecordids
    #:geofence-sourcekinds
    #:geofence-sourcelicense
    #:geofence-sourceterms
    #:geofence-sourceretrievedat
    #:geofence-collectedat
    #:geofence-observedat
    #:geofence-firstseenat
    #:geofence-lastseenat
    #:geofence-createdat
    #:geofence-updatedat
    #:geofence-validfrom
    #:geofence-validuntil
    #:geofence-expiresat
    #:geofence-collector
    #:geofence-collectorversion
    #:geofence-collectionmethod
    #:geofence-collectionstatus
    #:geofence-runid
    #:geofence-correlationid
    #:geofence-causationid
    #:geofence-parentid
    #:geofence-rootid
    #:geofence-confidence
    #:geofence-confidencebasis
    #:geofence-qualityscore
    #:geofence-completenessscore
    #:geofence-verificationstatus
    #:geofence-verifiedat
    #:geofence-verifiedby
    #:geofence-provenance
    #:geofence-chainofcustody
    #:geofence-transformhistory
    #:geofence-labels
    #:geofence-tags
    #:geofence-topics
    #:geofence-language
    #:geofence-jurisdiction
    #:geofence-countrycode
    #:geofence-regioncode
    #:geofence-timezone
    #:geofence-sensitivity
    #:geofence-visibility
    #:geofence-owner
    #:geofence-accesscontrol
    #:geofence-legalbasis
    #:geofence-retentionpolicy
    #:geofence-contenttype
    #:geofence-encoding
    #:geofence-sizebytes
    #:geofence-contenthash
    #:geofence-hashalgorithm
    #:geofence-normalizedhash
    #:geofence-raw
    #:geofence-rawcontent
    #:geofence-notes
    #:geofence-deleted
    #:geofence-tombstonereason
    #:geofence-extensions
    #:geofence-name
    #:geofence-geometry
    #:geofence-transitions
    #:geofence-mission
    #:geofence-subjects
    #:geofence-activefrom
    #:geofence-activeuntil
    #:geofence-dwellseconds
    #:geofence-enabled
    #:geofence-policy
    #:encounter
    #:MAKE-encounter
    #:COPY-encounter
    #:encounter-P
    #:+encounter-WIRE-FIELDS+
    #:encounter-id
    #:encounter-rev
    #:encounter-dataset
    #:encounter-dtype
    #:encounter-schemaversion
    #:encounter-externalids
    #:encounter-aliases
    #:encounter-sources
    #:encounter-sourceurls
    #:encounter-sourcerecordids
    #:encounter-sourcekinds
    #:encounter-sourcelicense
    #:encounter-sourceterms
    #:encounter-sourceretrievedat
    #:encounter-collectedat
    #:encounter-observedat
    #:encounter-firstseenat
    #:encounter-lastseenat
    #:encounter-createdat
    #:encounter-updatedat
    #:encounter-validfrom
    #:encounter-validuntil
    #:encounter-expiresat
    #:encounter-collector
    #:encounter-collectorversion
    #:encounter-collectionmethod
    #:encounter-collectionstatus
    #:encounter-runid
    #:encounter-correlationid
    #:encounter-causationid
    #:encounter-parentid
    #:encounter-rootid
    #:encounter-confidence
    #:encounter-confidencebasis
    #:encounter-qualityscore
    #:encounter-completenessscore
    #:encounter-verificationstatus
    #:encounter-verifiedat
    #:encounter-verifiedby
    #:encounter-provenance
    #:encounter-chainofcustody
    #:encounter-transformhistory
    #:encounter-labels
    #:encounter-tags
    #:encounter-topics
    #:encounter-language
    #:encounter-jurisdiction
    #:encounter-countrycode
    #:encounter-regioncode
    #:encounter-timezone
    #:encounter-sensitivity
    #:encounter-visibility
    #:encounter-owner
    #:encounter-accesscontrol
    #:encounter-legalbasis
    #:encounter-retentionpolicy
    #:encounter-contenttype
    #:encounter-encoding
    #:encounter-sizebytes
    #:encounter-contenthash
    #:encounter-hashalgorithm
    #:encounter-normalizedhash
    #:encounter-raw
    #:encounter-rawcontent
    #:encounter-notes
    #:encounter-deleted
    #:encounter-tombstonereason
    #:encounter-extensions
    #:encounter-participants
    #:encounter-location
    #:encounter-geometry
    #:encounter-startedat
    #:encounter-endedat
    #:encounter-minimumdistancemeters
    #:encounter-observations
    #:encounter-evidence
    #:encounter-sourcerunids
    #:map-layer
    #:MAKE-map-layer
    #:COPY-map-layer
    #:map-layer-P
    #:+map-layer-WIRE-FIELDS+
    #:map-layer-id
    #:map-layer-rev
    #:map-layer-dataset
    #:map-layer-dtype
    #:map-layer-schemaversion
    #:map-layer-externalids
    #:map-layer-aliases
    #:map-layer-sources
    #:map-layer-sourceurls
    #:map-layer-sourcerecordids
    #:map-layer-sourcekinds
    #:map-layer-sourcelicense
    #:map-layer-sourceterms
    #:map-layer-sourceretrievedat
    #:map-layer-collectedat
    #:map-layer-observedat
    #:map-layer-firstseenat
    #:map-layer-lastseenat
    #:map-layer-createdat
    #:map-layer-updatedat
    #:map-layer-validfrom
    #:map-layer-validuntil
    #:map-layer-expiresat
    #:map-layer-collector
    #:map-layer-collectorversion
    #:map-layer-collectionmethod
    #:map-layer-collectionstatus
    #:map-layer-runid
    #:map-layer-correlationid
    #:map-layer-causationid
    #:map-layer-parentid
    #:map-layer-rootid
    #:map-layer-confidence
    #:map-layer-confidencebasis
    #:map-layer-qualityscore
    #:map-layer-completenessscore
    #:map-layer-verificationstatus
    #:map-layer-verifiedat
    #:map-layer-verifiedby
    #:map-layer-provenance
    #:map-layer-chainofcustody
    #:map-layer-transformhistory
    #:map-layer-labels
    #:map-layer-tags
    #:map-layer-topics
    #:map-layer-language
    #:map-layer-jurisdiction
    #:map-layer-countrycode
    #:map-layer-regioncode
    #:map-layer-timezone
    #:map-layer-sensitivity
    #:map-layer-visibility
    #:map-layer-owner
    #:map-layer-accesscontrol
    #:map-layer-legalbasis
    #:map-layer-retentionpolicy
    #:map-layer-contenttype
    #:map-layer-encoding
    #:map-layer-sizebytes
    #:map-layer-contenthash
    #:map-layer-hashalgorithm
    #:map-layer-normalizedhash
    #:map-layer-raw
    #:map-layer-rawcontent
    #:map-layer-notes
    #:map-layer-deleted
    #:map-layer-tombstonereason
    #:map-layer-extensions
    #:map-layer-name
    #:map-layer-sourcedataset
    #:map-layer-query
    #:map-layer-features
    #:map-layer-style
    #:map-layer-visible
    #:map-layer-minimumzoom
    #:map-layer-maximumzoom
    #:map-layer-readonly
    #:message
    #:MAKE-message
    #:COPY-message
    #:message-P
    #:+message-WIRE-FIELDS+
    #:message-id
    #:message-rev
    #:message-dataset
    #:message-dtype
    #:message-schemaversion
    #:message-externalids
    #:message-aliases
    #:message-sources
    #:message-sourceurls
    #:message-sourcerecordids
    #:message-sourcekinds
    #:message-sourcelicense
    #:message-sourceterms
    #:message-sourceretrievedat
    #:message-collectedat
    #:message-observedat
    #:message-firstseenat
    #:message-lastseenat
    #:message-createdat
    #:message-updatedat
    #:message-validfrom
    #:message-validuntil
    #:message-expiresat
    #:message-collector
    #:message-collectorversion
    #:message-collectionmethod
    #:message-collectionstatus
    #:message-runid
    #:message-correlationid
    #:message-causationid
    #:message-parentid
    #:message-rootid
    #:message-confidence
    #:message-confidencebasis
    #:message-qualityscore
    #:message-completenessscore
    #:message-verificationstatus
    #:message-verifiedat
    #:message-verifiedby
    #:message-provenance
    #:message-chainofcustody
    #:message-transformhistory
    #:message-labels
    #:message-tags
    #:message-topics
    #:message-language
    #:message-jurisdiction
    #:message-countrycode
    #:message-regioncode
    #:message-timezone
    #:message-sensitivity
    #:message-visibility
    #:message-owner
    #:message-accesscontrol
    #:message-legalbasis
    #:message-retentionpolicy
    #:message-contenttype
    #:message-encoding
    #:message-sizebytes
    #:message-contenthash
    #:message-hashalgorithm
    #:message-normalizedhash
    #:message-raw
    #:message-rawcontent
    #:message-notes
    #:message-deleted
    #:message-tombstonereason
    #:message-extensions
    #:message-message
    #:message-platform
    #:message-user
    #:message-isreply
    #:message-media
    #:message-messageid
    #:message-replyto
    #:message-threadid
    #:message-group
    #:message-channel
    #:message-mentions
    #:message-reactions
    #:message-edited
    #:message-editedat
    #:message-sentat
    #:message-deletedat
    #:socialmpost
    #:MAKE-socialmpost
    #:COPY-socialmpost
    #:socialmpost-P
    #:+socialmpost-WIRE-FIELDS+
    #:socialmpost-id
    #:socialmpost-rev
    #:socialmpost-dataset
    #:socialmpost-dtype
    #:socialmpost-schemaversion
    #:socialmpost-externalids
    #:socialmpost-aliases
    #:socialmpost-sources
    #:socialmpost-sourceurls
    #:socialmpost-sourcerecordids
    #:socialmpost-sourcekinds
    #:socialmpost-sourcelicense
    #:socialmpost-sourceterms
    #:socialmpost-sourceretrievedat
    #:socialmpost-collectedat
    #:socialmpost-observedat
    #:socialmpost-firstseenat
    #:socialmpost-lastseenat
    #:socialmpost-createdat
    #:socialmpost-updatedat
    #:socialmpost-validfrom
    #:socialmpost-validuntil
    #:socialmpost-expiresat
    #:socialmpost-collector
    #:socialmpost-collectorversion
    #:socialmpost-collectionmethod
    #:socialmpost-collectionstatus
    #:socialmpost-runid
    #:socialmpost-correlationid
    #:socialmpost-causationid
    #:socialmpost-parentid
    #:socialmpost-rootid
    #:socialmpost-confidence
    #:socialmpost-confidencebasis
    #:socialmpost-qualityscore
    #:socialmpost-completenessscore
    #:socialmpost-verificationstatus
    #:socialmpost-verifiedat
    #:socialmpost-verifiedby
    #:socialmpost-provenance
    #:socialmpost-chainofcustody
    #:socialmpost-transformhistory
    #:socialmpost-labels
    #:socialmpost-tags
    #:socialmpost-topics
    #:socialmpost-language
    #:socialmpost-jurisdiction
    #:socialmpost-countrycode
    #:socialmpost-regioncode
    #:socialmpost-timezone
    #:socialmpost-sensitivity
    #:socialmpost-visibility
    #:socialmpost-owner
    #:socialmpost-accesscontrol
    #:socialmpost-legalbasis
    #:socialmpost-retentionpolicy
    #:socialmpost-contenttype
    #:socialmpost-encoding
    #:socialmpost-sizebytes
    #:socialmpost-contenthash
    #:socialmpost-hashalgorithm
    #:socialmpost-normalizedhash
    #:socialmpost-raw
    #:socialmpost-rawcontent
    #:socialmpost-notes
    #:socialmpost-deleted
    #:socialmpost-tombstonereason
    #:socialmpost-extensions
    #:socialmpost-content
    #:socialmpost-user
    #:socialmpost-platform
    #:socialmpost-platformpostid
    #:socialmpost-replies
    #:socialmpost-media
    #:socialmpost-replycount
    #:socialmpost-repostcount
    #:socialmpost-likecount
    #:socialmpost-viewcount
    #:socialmpost-quotecount
    #:socialmpost-bookmarkcount
    #:socialmpost-url
    #:socialmpost-links
    #:socialmpost-hashtags
    #:socialmpost-mentions
    #:socialmpost-title
    #:socialmpost-group
    #:socialmpost-replyto
    #:socialmpost-conversationid
    #:socialmpost-publishedat
    #:socialmpost-editedat
    #:socialmpost-sensitive
    #:operation-condition
    #:MAKE-operation-condition
    #:COPY-operation-condition
    #:operation-condition-P
    #:+operation-condition-WIRE-FIELDS+
    #:operation-condition-conditionid
    #:operation-condition-kind
    #:operation-condition-predicate
    #:operation-condition-subject
    #:operation-condition-object
    #:operation-condition-expression
    #:operation-condition-required
    #:operation-condition-metadata
    #:operation-target-policy
    #:MAKE-operation-target-policy
    #:COPY-operation-target-policy
    #:operation-target-policy-P
    #:+operation-target-policy-WIRE-FIELDS+
    #:operation-target-policy-alloweddtypes
    #:operation-target-policy-allowedtargettypes
    #:operation-target-policy-allowedroles
    #:operation-target-policy-selectors
    #:operation-target-bindings
    #:MAKE-operation-target-bindings
    #:COPY-operation-target-bindings
    #:operation-target-bindings-P
    #:+operation-target-bindings-WIRE-FIELDS+
    #:operation-target-bindings-primary
    #:operation-target-bindings-supporting
    #:operation-target-bindings-derived
    #:operation-target-bindings-excluded
    #:operation-dataset-binding
    #:MAKE-operation-dataset-binding
    #:COPY-operation-dataset-binding
    #:operation-dataset-binding-P
    #:+operation-dataset-binding-WIRE-FIELDS+
    #:operation-dataset-binding-bindingid
    #:operation-dataset-binding-dataset
    #:operation-dataset-binding-role
    #:operation-dataset-binding-access
    #:operation-dataset-binding-phases
    #:operation-dataset-binding-purpose
    #:operation-capability-gap
    #:MAKE-operation-capability-gap
    #:COPY-operation-capability-gap
    #:operation-capability-gap-P
    #:+operation-capability-gap-WIRE-FIELDS+
    #:operation-capability-gap-capabilityid
    #:operation-capability-gap-category
    #:operation-capability-gap-description
    #:operation-capability-gap-requiredby
    #:operation-capability-gap-blocking
    #:operation-capability-gap-status
    #:operation-capability-gap-capabilityref
    #:operation-capability-gap-resolutionref
    #:operation-capability-gap-owner
    #:operation-capability-gap-metadata
    #:operation-assignment
    #:MAKE-operation-assignment
    #:COPY-operation-assignment
    #:operation-assignment-P
    #:+operation-assignment-WIRE-FIELDS+
    #:operation-assignment-assignmentid
    #:operation-assignment-agentid
    #:operation-assignment-actorid
    #:operation-assignment-phaseids
    #:operation-assignment-role
    #:operation-assignment-metadata
    #:operation-post-action
    #:MAKE-operation-post-action
    #:COPY-operation-post-action
    #:operation-post-action-P
    #:+operation-post-action-WIRE-FIELDS+
    #:operation-post-action-actionid
    #:operation-post-action-actiontype
    #:operation-post-action-condition
    #:operation-post-action-targetids
    #:operation-post-action-datasetbindingids
    #:operation-post-action-config
    #:operation-phase
    #:MAKE-operation-phase
    #:COPY-operation-phase
    #:operation-phase-P
    #:+operation-phase-WIRE-FIELDS+
    #:operation-phase-phaseid
    #:operation-phase-title
    #:operation-phase-objective
    #:operation-phase-state
    #:operation-phase-dependson
    #:operation-phase-entryconditions
    #:operation-phase-exitconditions
    #:operation-phase-inscope
    #:operation-phase-outofscope
    #:operation-phase-targetpolicy
    #:operation-phase-targetids
    #:operation-phase-datasetbindingids
    #:operation-phase-requiredcapabilityids
    #:operation-phase-deliverableids
    #:operation-phase-completionevidence
    #:operation
    #:MAKE-operation
    #:COPY-operation
    #:operation-P
    #:+operation-WIRE-FIELDS+
    #:operation-id
    #:operation-rev
    #:operation-dataset
    #:operation-dtype
    #:operation-schemaversion
    #:operation-externalids
    #:operation-aliases
    #:operation-sources
    #:operation-sourceurls
    #:operation-sourcerecordids
    #:operation-sourcekinds
    #:operation-sourcelicense
    #:operation-sourceterms
    #:operation-sourceretrievedat
    #:operation-collectedat
    #:operation-observedat
    #:operation-firstseenat
    #:operation-lastseenat
    #:operation-createdat
    #:operation-updatedat
    #:operation-validfrom
    #:operation-validuntil
    #:operation-expiresat
    #:operation-collector
    #:operation-collectorversion
    #:operation-collectionmethod
    #:operation-collectionstatus
    #:operation-runid
    #:operation-correlationid
    #:operation-causationid
    #:operation-parentid
    #:operation-rootid
    #:operation-confidence
    #:operation-confidencebasis
    #:operation-qualityscore
    #:operation-completenessscore
    #:operation-verificationstatus
    #:operation-verifiedat
    #:operation-verifiedby
    #:operation-provenance
    #:operation-chainofcustody
    #:operation-transformhistory
    #:operation-labels
    #:operation-tags
    #:operation-topics
    #:operation-language
    #:operation-jurisdiction
    #:operation-countrycode
    #:operation-regioncode
    #:operation-timezone
    #:operation-sensitivity
    #:operation-visibility
    #:operation-owner
    #:operation-accesscontrol
    #:operation-legalbasis
    #:operation-retentionpolicy
    #:operation-contenttype
    #:operation-encoding
    #:operation-sizebytes
    #:operation-contenthash
    #:operation-hashalgorithm
    #:operation-normalizedhash
    #:operation-raw
    #:operation-rawcontent
    #:operation-notes
    #:operation-deleted
    #:operation-tombstonereason
    #:operation-extensions
    #:operation-mission
    #:operation-objectives
    #:operation-inscope
    #:operation-outofscope
    #:operation-targetpolicy
    #:operation-targets
    #:operation-phases
    #:operation-datasets
    #:operation-capabilitygaps
    #:operation-assignments
    #:operation-postactions
    #:investigation-target
    #:MAKE-investigation-target
    #:COPY-investigation-target
    #:investigation-target-P
    #:+investigation-target-WIRE-FIELDS+
    #:investigation-target-id
    #:investigation-target-rev
    #:investigation-target-dataset
    #:investigation-target-dtype
    #:investigation-target-schemaversion
    #:investigation-target-externalids
    #:investigation-target-aliases
    #:investigation-target-sources
    #:investigation-target-sourceurls
    #:investigation-target-sourcerecordids
    #:investigation-target-sourcekinds
    #:investigation-target-sourcelicense
    #:investigation-target-sourceterms
    #:investigation-target-sourceretrievedat
    #:investigation-target-collectedat
    #:investigation-target-observedat
    #:investigation-target-firstseenat
    #:investigation-target-lastseenat
    #:investigation-target-createdat
    #:investigation-target-updatedat
    #:investigation-target-validfrom
    #:investigation-target-validuntil
    #:investigation-target-expiresat
    #:investigation-target-collector
    #:investigation-target-collectorversion
    #:investigation-target-collectionmethod
    #:investigation-target-collectionstatus
    #:investigation-target-runid
    #:investigation-target-correlationid
    #:investigation-target-causationid
    #:investigation-target-parentid
    #:investigation-target-rootid
    #:investigation-target-confidence
    #:investigation-target-confidencebasis
    #:investigation-target-qualityscore
    #:investigation-target-completenessscore
    #:investigation-target-verificationstatus
    #:investigation-target-verifiedat
    #:investigation-target-verifiedby
    #:investigation-target-provenance
    #:investigation-target-chainofcustody
    #:investigation-target-transformhistory
    #:investigation-target-labels
    #:investigation-target-tags
    #:investigation-target-topics
    #:investigation-target-language
    #:investigation-target-jurisdiction
    #:investigation-target-countrycode
    #:investigation-target-regioncode
    #:investigation-target-timezone
    #:investigation-target-sensitivity
    #:investigation-target-visibility
    #:investigation-target-owner
    #:investigation-target-accesscontrol
    #:investigation-target-legalbasis
    #:investigation-target-retentionpolicy
    #:investigation-target-contenttype
    #:investigation-target-encoding
    #:investigation-target-sizebytes
    #:investigation-target-contenthash
    #:investigation-target-hashalgorithm
    #:investigation-target-normalizedhash
    #:investigation-target-raw
    #:investigation-target-rawcontent
    #:investigation-target-notes
    #:investigation-target-deleted
    #:investigation-target-tombstonereason
    #:investigation-target-extensions
    #:investigation-target-actor
    #:investigation-target-target
    #:investigation-target-targetid
    #:investigation-target-targettype
    #:investigation-target-query
    #:investigation-target-researchquestion
    #:investigation-target-hypotheses
    #:investigation-target-objectives
    #:investigation-target-inscope
    #:investigation-target-outofscope
    #:investigation-target-scopetype
    #:investigation-target-seedids
    #:investigation-target-sourceids
    #:investigation-target-requireddtypes
    #:investigation-target-preferredsources
    #:investigation-target-excludedsources
    #:investigation-target-delay
    #:investigation-target-recurring
    #:investigation-target-recurrence
    #:investigation-target-options
    #:investigation-target-depth
    #:investigation-target-maxdepth
    #:investigation-target-breadth
    #:investigation-target-priority
    #:investigation-target-score
    #:investigation-target-selectionreason
    #:investigation-target-status
    #:investigation-target-nextrunat
    #:asset-identifier-records-item
    #:MAKE-asset-identifier-records-item
    #:COPY-asset-identifier-records-item
    #:asset-identifier-records-item-P
    #:+asset-identifier-records-item-WIRE-FIELDS+
    #:asset-identifier-records-item-scheme
    #:asset-identifier-records-item-value
    #:asset-identifier-records-item-issuer
    #:asset-identifier-records-item-jurisdiction
    #:asset-identifier-records-item-canonical
    #:asset-identifier-records-item-validfrom
    #:asset-identifier-records-item-validto
    #:asset-identifier-records-item-url
    #:asset-identifier-records-item-notes
    #:asset-valuation-records-item
    #:MAKE-asset-valuation-records-item
    #:COPY-asset-valuation-records-item
    #:asset-valuation-records-item-P
    #:+asset-valuation-records-item-WIRE-FIELDS+
    #:asset-valuation-records-item-amount
    #:asset-valuation-records-item-currency
    #:asset-valuation-records-item-basis
    #:asset-valuation-records-item-asof
    #:asset-valuation-records-item-notes
    #:asset-external-ids-item
    #:MAKE-asset-external-ids-item
    #:COPY-asset-external-ids-item
    #:asset-external-ids-item-P
    #:+asset-external-ids-item-WIRE-FIELDS+
    #:asset-external-ids-item-scheme
    #:asset-external-ids-item-value
    #:asset-external-ids-item-issuer
    #:asset-external-ids-item-jurisdiction
    #:asset-external-ids-item-canonical
    #:asset-external-ids-item-validfrom
    #:asset-external-ids-item-validto
    #:asset-external-ids-item-url
    #:asset-external-ids-item-notes
    #:campaign-finance-amount-record
    #:MAKE-campaign-finance-amount-record
    #:COPY-campaign-finance-amount-record
    #:campaign-finance-amount-record-P
    #:+campaign-finance-amount-record-WIRE-FIELDS+
    #:campaign-finance-amount-record-amount
    #:campaign-finance-amount-record-currency
    #:campaign-finance-amount-record-basis
    #:campaign-finance-amount-record-asof
    #:campaign-finance-amount-record-notes
    #:campaign-finance-aggregate-amount
    #:MAKE-campaign-finance-aggregate-amount
    #:COPY-campaign-finance-aggregate-amount
    #:campaign-finance-aggregate-amount-P
    #:+campaign-finance-aggregate-amount-WIRE-FIELDS+
    #:campaign-finance-aggregate-amount-amount
    #:campaign-finance-aggregate-amount-currency
    #:campaign-finance-aggregate-amount-basis
    #:campaign-finance-aggregate-amount-asof
    #:campaign-finance-aggregate-amount-notes
    #:campaign-finance-source-system-ids-item
    #:MAKE-campaign-finance-source-system-ids-item
    #:COPY-campaign-finance-source-system-ids-item
    #:campaign-finance-source-system-ids-item-P
    #:+campaign-finance-source-system-ids-item-WIRE-FIELDS+
    #:campaign-finance-source-system-ids-item-scheme
    #:campaign-finance-source-system-ids-item-value
    #:campaign-finance-source-system-ids-item-issuer
    #:campaign-finance-source-system-ids-item-jurisdiction
    #:campaign-finance-source-system-ids-item-canonical
    #:campaign-finance-source-system-ids-item-validfrom
    #:campaign-finance-source-system-ids-item-validto
    #:campaign-finance-source-system-ids-item-url
    #:campaign-finance-source-system-ids-item-notes
    #:contract-funding-records-item
    #:MAKE-contract-funding-records-item
    #:COPY-contract-funding-records-item
    #:contract-funding-records-item-P
    #:+contract-funding-records-item-WIRE-FIELDS+
    #:contract-funding-records-item-amount
    #:contract-funding-records-item-currency
    #:contract-funding-records-item-basis
    #:contract-funding-records-item-asof
    #:contract-funding-records-item-notes
    #:contract-source-system-ids-item
    #:MAKE-contract-source-system-ids-item
    #:COPY-contract-source-system-ids-item
    #:contract-source-system-ids-item-P
    #:+contract-source-system-ids-item-WIRE-FIELDS+
    #:contract-source-system-ids-item-scheme
    #:contract-source-system-ids-item-value
    #:contract-source-system-ids-item-issuer
    #:contract-source-system-ids-item-jurisdiction
    #:contract-source-system-ids-item-canonical
    #:contract-source-system-ids-item-validfrom
    #:contract-source-system-ids-item-validto
    #:contract-source-system-ids-item-url
    #:contract-source-system-ids-item-notes
    #:employment-compensation-records-item
    #:MAKE-employment-compensation-records-item
    #:COPY-employment-compensation-records-item
    #:employment-compensation-records-item-P
    #:+employment-compensation-records-item-WIRE-FIELDS+
    #:employment-compensation-records-item-amount
    #:employment-compensation-records-item-currency
    #:employment-compensation-records-item-basis
    #:employment-compensation-records-item-asof
    #:employment-compensation-records-item-notes
    #:entity-identity-keys-item
    #:MAKE-entity-identity-keys-item
    #:COPY-entity-identity-keys-item
    #:entity-identity-keys-item-P
    #:+entity-identity-keys-item-WIRE-FIELDS+
    #:entity-identity-keys-item-scheme
    #:entity-identity-keys-item-value
    #:entity-identity-keys-item-issuer
    #:entity-identity-keys-item-jurisdiction
    #:entity-identity-keys-item-canonical
    #:entity-identity-keys-item-validfrom
    #:entity-identity-keys-item-validto
    #:entity-identity-keys-item-url
    #:entity-identity-keys-item-notes
    #:entity-external-ids-item
    #:MAKE-entity-external-ids-item
    #:COPY-entity-external-ids-item
    #:entity-external-ids-item-P
    #:+entity-external-ids-item-WIRE-FIELDS+
    #:entity-external-ids-item-scheme
    #:entity-external-ids-item-value
    #:entity-external-ids-item-issuer
    #:entity-external-ids-item-jurisdiction
    #:entity-external-ids-item-canonical
    #:entity-external-ids-item-validfrom
    #:entity-external-ids-item-validto
    #:entity-external-ids-item-url
    #:entity-external-ids-item-notes
    #:financial-observation-amount-record
    #:MAKE-financial-observation-amount-record
    #:COPY-financial-observation-amount-record
    #:financial-observation-amount-record-P
    #:+financial-observation-amount-record-WIRE-FIELDS+
    #:financial-observation-amount-record-amount
    #:financial-observation-amount-record-currency
    #:financial-observation-amount-record-basis
    #:financial-observation-amount-record-asof
    #:financial-observation-amount-record-notes
    #:grant-funding-records-item
    #:MAKE-grant-funding-records-item
    #:COPY-grant-funding-records-item
    #:grant-funding-records-item-P
    #:+grant-funding-records-item-WIRE-FIELDS+
    #:grant-funding-records-item-amount
    #:grant-funding-records-item-currency
    #:grant-funding-records-item-basis
    #:grant-funding-records-item-asof
    #:grant-funding-records-item-notes
    #:grant-matching-amount
    #:MAKE-grant-matching-amount
    #:COPY-grant-matching-amount
    #:grant-matching-amount-P
    #:+grant-matching-amount-WIRE-FIELDS+
    #:grant-matching-amount-amount
    #:grant-matching-amount-currency
    #:grant-matching-amount-basis
    #:grant-matching-amount-asof
    #:grant-matching-amount-notes
    #:lobbying-filing-amount-records-item
    #:MAKE-lobbying-filing-amount-records-item
    #:COPY-lobbying-filing-amount-records-item
    #:lobbying-filing-amount-records-item-P
    #:+lobbying-filing-amount-records-item-WIRE-FIELDS+
    #:lobbying-filing-amount-records-item-amount
    #:lobbying-filing-amount-records-item-currency
    #:lobbying-filing-amount-records-item-basis
    #:lobbying-filing-amount-records-item-asof
    #:lobbying-filing-amount-records-item-notes
    #:ownership-value-record
    #:MAKE-ownership-value-record
    #:COPY-ownership-value-record
    #:ownership-value-record-P
    #:+ownership-value-record-WIRE-FIELDS+
    #:ownership-value-record-amount
    #:ownership-value-record-currency
    #:ownership-value-record-basis
    #:ownership-value-record-asof
    #:ownership-value-record-notes
    #:procurement-funding-records-item
    #:MAKE-procurement-funding-records-item
    #:COPY-procurement-funding-records-item
    #:procurement-funding-records-item-P
    #:+procurement-funding-records-item-WIRE-FIELDS+
    #:procurement-funding-records-item-amount
    #:procurement-funding-records-item-currency
    #:procurement-funding-records-item-basis
    #:procurement-funding-records-item-asof
    #:procurement-funding-records-item-notes
    #:procurement-source-system-ids-item
    #:MAKE-procurement-source-system-ids-item
    #:COPY-procurement-source-system-ids-item
    #:procurement-source-system-ids-item-P
    #:+procurement-source-system-ids-item-WIRE-FIELDS+
    #:procurement-source-system-ids-item-scheme
    #:procurement-source-system-ids-item-value
    #:procurement-source-system-ids-item-issuer
    #:procurement-source-system-ids-item-jurisdiction
    #:procurement-source-system-ids-item-canonical
    #:procurement-source-system-ids-item-validfrom
    #:procurement-source-system-ids-item-validto
    #:procurement-source-system-ids-item-url
    #:procurement-source-system-ids-item-notes
    #:product-pricing-records-item
    #:MAKE-product-pricing-records-item
    #:COPY-product-pricing-records-item
    #:product-pricing-records-item-P
    #:+product-pricing-records-item-WIRE-FIELDS+
    #:product-pricing-records-item-amount
    #:product-pricing-records-item-currency
    #:product-pricing-records-item-basis
    #:product-pricing-records-item-asof
    #:product-pricing-records-item-notes
    #:product-external-ids-item
    #:MAKE-product-external-ids-item
    #:COPY-product-external-ids-item
    #:product-external-ids-item-P
    #:+product-external-ids-item-WIRE-FIELDS+
    #:product-external-ids-item-scheme
    #:product-external-ids-item-value
    #:product-external-ids-item-issuer
    #:product-external-ids-item-jurisdiction
    #:product-external-ids-item-canonical
    #:product-external-ids-item-validfrom
    #:product-external-ids-item-validto
    #:product-external-ids-item-url
    #:product-external-ids-item-notes
    #:research-node-limits
    #:MAKE-research-node-limits
    #:COPY-research-node-limits
    #:research-node-limits-P
    #:+research-node-limits-WIRE-FIELDS+
    #:research-node-limits-maxdepth
    #:research-node-limits-maxactorruns
    #:research-node-limits-maxrequests
    #:research-node-limits-maxelapsedms
    #:research-node-limits-maxrepeatedstate
    #:research-node-limits-maxcost
    #:research-node-limits-currency
    #:research-node-stop
    #:MAKE-research-node-stop
    #:COPY-research-node-stop
    #:research-node-stop-P
    #:+research-node-stop-WIRE-FIELDS+
    #:research-node-stop-whenactorqueueempty
    #:research-node-stop-whennonewdocuments
    #:research-node-stop-whenobjectivesatisfied
    #:research-node-stop-haltonactorfailure
    #:research-node-counters
    #:MAKE-research-node-counters
    #:COPY-research-node-counters
    #:research-node-counters-P
    #:+research-node-counters-WIRE-FIELDS+
    #:research-node-counters-actorruns
    #:research-node-counters-repeatedstate
    #:research-node-counters-elapsedms
    #:research-node-history-item
    #:MAKE-research-node-history-item
    #:COPY-research-node-history-item
    #:research-node-history-item-P
    #:+research-node-history-item-WIRE-FIELDS+
    #:research-node-history-item-from
    #:research-node-history-item-to
    #:research-node-history-item-at
    #:research-node-history-item-message
    #:research-node-history-item-error
    #:research-node-history-item-actorid
    #:research-node-history-item-runid
    #:research-node-history-item-outputids
    #:research-node-history-item-artifactids
    #:alert
    #:MAKE-alert
    #:COPY-alert
    #:alert-P
    #:+alert-WIRE-FIELDS+
    #:alert-id
    #:alert-rev
    #:alert-dataset
    #:alert-dtype
    #:alert-schemaversion
    #:alert-externalids
    #:alert-aliases
    #:alert-sources
    #:alert-sourceurls
    #:alert-sourcerecordids
    #:alert-sourcekinds
    #:alert-sourcelicense
    #:alert-sourceterms
    #:alert-sourceretrievedat
    #:alert-collectedat
    #:alert-observedat
    #:alert-firstseenat
    #:alert-lastseenat
    #:alert-createdat
    #:alert-updatedat
    #:alert-validfrom
    #:alert-validuntil
    #:alert-expiresat
    #:alert-collector
    #:alert-collectorversion
    #:alert-collectionmethod
    #:alert-collectionstatus
    #:alert-runid
    #:alert-correlationid
    #:alert-causationid
    #:alert-parentid
    #:alert-rootid
    #:alert-confidence
    #:alert-confidencebasis
    #:alert-qualityscore
    #:alert-completenessscore
    #:alert-verificationstatus
    #:alert-verifiedat
    #:alert-verifiedby
    #:alert-provenance
    #:alert-chainofcustody
    #:alert-transformhistory
    #:alert-labels
    #:alert-tags
    #:alert-topics
    #:alert-language
    #:alert-jurisdiction
    #:alert-countrycode
    #:alert-regioncode
    #:alert-timezone
    #:alert-sensitivity
    #:alert-visibility
    #:alert-owner
    #:alert-accesscontrol
    #:alert-legalbasis
    #:alert-retentionpolicy
    #:alert-contenttype
    #:alert-encoding
    #:alert-sizebytes
    #:alert-contenthash
    #:alert-hashalgorithm
    #:alert-normalizedhash
    #:alert-raw
    #:alert-rawcontent
    #:alert-notes
    #:alert-deleted
    #:alert-tombstonereason
    #:alert-extensions
    #:alert-description
    #:alert-status
    #:alert-contentvalidfrom
    #:alert-contentvaliduntil
    #:alert-ruleid
    #:alert-triggereventid
    #:alert-relatedalertids
    #:alert-firsttriggeredat
    #:alert-lasttriggeredat
    #:alert-occurrencecount
    #:alert-acknowledgementactions
    #:alert-suppresseduntil
    #:alert-resolvedat
    #:alert-resolution
    #:alert-alerttype
    #:alert-subjectids
    #:alert-condition
    #:alert-threshold
    #:alert-triggeredat
    #:alert-severity
    #:alert-acknowledgedby
    #:analysis
    #:MAKE-analysis
    #:COPY-analysis
    #:analysis-P
    #:+analysis-WIRE-FIELDS+
    #:analysis-id
    #:analysis-rev
    #:analysis-dataset
    #:analysis-dtype
    #:analysis-schemaversion
    #:analysis-externalids
    #:analysis-aliases
    #:analysis-sources
    #:analysis-sourceurls
    #:analysis-sourcerecordids
    #:analysis-sourcekinds
    #:analysis-sourcelicense
    #:analysis-sourceterms
    #:analysis-sourceretrievedat
    #:analysis-collectedat
    #:analysis-observedat
    #:analysis-firstseenat
    #:analysis-lastseenat
    #:analysis-createdat
    #:analysis-updatedat
    #:analysis-validfrom
    #:analysis-validuntil
    #:analysis-expiresat
    #:analysis-collector
    #:analysis-collectorversion
    #:analysis-collectionmethod
    #:analysis-collectionstatus
    #:analysis-runid
    #:analysis-correlationid
    #:analysis-causationid
    #:analysis-parentid
    #:analysis-rootid
    #:analysis-confidencebasis
    #:analysis-qualityscore
    #:analysis-completenessscore
    #:analysis-verificationstatus
    #:analysis-verifiedat
    #:analysis-verifiedby
    #:analysis-provenance
    #:analysis-chainofcustody
    #:analysis-transformhistory
    #:analysis-labels
    #:analysis-tags
    #:analysis-topics
    #:analysis-language
    #:analysis-jurisdiction
    #:analysis-countrycode
    #:analysis-regioncode
    #:analysis-timezone
    #:analysis-sensitivity
    #:analysis-visibility
    #:analysis-owner
    #:analysis-accesscontrol
    #:analysis-legalbasis
    #:analysis-retentionpolicy
    #:analysis-contenttype
    #:analysis-encoding
    #:analysis-sizebytes
    #:analysis-contenthash
    #:analysis-hashalgorithm
    #:analysis-normalizedhash
    #:analysis-raw
    #:analysis-rawcontent
    #:analysis-notes
    #:analysis-deleted
    #:analysis-tombstonereason
    #:analysis-extensions
    #:analysis-description
    #:analysis-status
    #:analysis-contentvalidfrom
    #:analysis-contentvaliduntil
    #:analysis-hypotheses
    #:analysis-methodids
    #:analysis-claimids
    #:analysis-logic
    #:analysis-reasoningartifactids
    #:analysis-uncertaintysources
    #:analysis-dependencyids
    #:analysis-reviewids
    #:analysis-outputids
    #:analysis-question
    #:analysis-method
    #:analysis-framework
    #:analysis-scope
    #:analysis-inputids
    #:analysis-findingids
    #:analysis-findings
    #:analysis-conclusions
    #:analysis-recommendations
    #:analysis-counterarguments
    #:analysis-limitations
    #:analysis-unresolved
    #:analysis-payloadconfidence
    #:asset
    #:MAKE-asset
    #:COPY-asset
    #:asset-P
    #:+asset-WIRE-FIELDS+
    #:asset-id
    #:asset-rev
    #:asset-dataset
    #:asset-dtype
    #:asset-schemaversion
    #:asset-externalids
    #:asset-aliases
    #:asset-sources
    #:asset-sourceurls
    #:asset-sourcerecordids
    #:asset-sourcekinds
    #:asset-sourcelicense
    #:asset-sourceterms
    #:asset-sourceretrievedat
    #:asset-collectedat
    #:asset-observedat
    #:asset-firstseenat
    #:asset-lastseenat
    #:asset-createdat
    #:asset-updatedat
    #:asset-validfrom
    #:asset-validuntil
    #:asset-expiresat
    #:asset-collector
    #:asset-collectorversion
    #:asset-collectionmethod
    #:asset-collectionstatus
    #:asset-runid
    #:asset-correlationid
    #:asset-causationid
    #:asset-parentid
    #:asset-rootid
    #:asset-confidence
    #:asset-confidencebasis
    #:asset-qualityscore
    #:asset-completenessscore
    #:asset-verificationstatus
    #:asset-verifiedat
    #:asset-verifiedby
    #:asset-provenance
    #:asset-chainofcustody
    #:asset-transformhistory
    #:asset-labels
    #:asset-tags
    #:asset-topics
    #:asset-language
    #:asset-jurisdiction
    #:asset-countrycode
    #:asset-regioncode
    #:asset-timezone
    #:asset-sensitivity
    #:asset-visibility
    #:asset-owner
    #:asset-accesscontrol
    #:asset-legalbasis
    #:asset-retentionpolicy
    #:asset-contenttype
    #:asset-encoding
    #:asset-sizebytes
    #:asset-contenthash
    #:asset-hashalgorithm
    #:asset-normalizedhash
    #:asset-raw
    #:asset-rawcontent
    #:asset-notes
    #:asset-deleted
    #:asset-tombstonereason
    #:asset-extensions
    #:asset-description
    #:asset-status
    #:asset-contentvalidfrom
    #:asset-contentvaliduntil
    #:asset-assetclass
    #:asset-custodianids
    #:asset-beneficialownerids
    #:asset-identifierrecords
    #:asset-valuationrecords
    #:asset-acquiredat
    #:asset-disposedat
    #:asset-acquisitioneventid
    #:asset-disposaleventid
    #:asset-componentids
    #:asset-etype
    #:asset-eid
    #:asset-name
    #:asset-displayname
    #:asset-legalname
    #:asset-shortname
    #:asset-formernames
    #:asset-bio
    #:asset-payloadjurisdiction
    #:asset-country
    #:asset-foundedat
    #:asset-dissolvedat
    #:asset-website
    #:asset-imageurl
    #:asset-logourl
    #:asset-payloadexternalids
    #:asset-contactids
    #:asset-locationids
    #:asset-assettype
    #:asset-ownerids
    #:asset-operatorids
    #:asset-serialnumber
    #:asset-registration
    #:asset-value
    #:asset-currency
    #:asset-locationid
    #:campaign-finance
    #:MAKE-campaign-finance
    #:COPY-campaign-finance
    #:campaign-finance-P
    #:+campaign-finance-WIRE-FIELDS+
    #:campaign-finance-id
    #:campaign-finance-rev
    #:campaign-finance-dataset
    #:campaign-finance-dtype
    #:campaign-finance-schemaversion
    #:campaign-finance-externalids
    #:campaign-finance-aliases
    #:campaign-finance-sources
    #:campaign-finance-sourceurls
    #:campaign-finance-sourcerecordids
    #:campaign-finance-sourcekinds
    #:campaign-finance-sourcelicense
    #:campaign-finance-sourceterms
    #:campaign-finance-sourceretrievedat
    #:campaign-finance-collectedat
    #:campaign-finance-observedat
    #:campaign-finance-firstseenat
    #:campaign-finance-lastseenat
    #:campaign-finance-createdat
    #:campaign-finance-updatedat
    #:campaign-finance-validfrom
    #:campaign-finance-validuntil
    #:campaign-finance-expiresat
    #:campaign-finance-collector
    #:campaign-finance-collectorversion
    #:campaign-finance-collectionmethod
    #:campaign-finance-collectionstatus
    #:campaign-finance-runid
    #:campaign-finance-correlationid
    #:campaign-finance-causationid
    #:campaign-finance-parentid
    #:campaign-finance-rootid
    #:campaign-finance-confidence
    #:campaign-finance-confidencebasis
    #:campaign-finance-qualityscore
    #:campaign-finance-completenessscore
    #:campaign-finance-verificationstatus
    #:campaign-finance-verifiedat
    #:campaign-finance-verifiedby
    #:campaign-finance-provenance
    #:campaign-finance-chainofcustody
    #:campaign-finance-transformhistory
    #:campaign-finance-labels
    #:campaign-finance-tags
    #:campaign-finance-topics
    #:campaign-finance-language
    #:campaign-finance-jurisdiction
    #:campaign-finance-countrycode
    #:campaign-finance-regioncode
    #:campaign-finance-timezone
    #:campaign-finance-sensitivity
    #:campaign-finance-visibility
    #:campaign-finance-owner
    #:campaign-finance-accesscontrol
    #:campaign-finance-legalbasis
    #:campaign-finance-retentionpolicy
    #:campaign-finance-contenttype
    #:campaign-finance-encoding
    #:campaign-finance-sizebytes
    #:campaign-finance-contenthash
    #:campaign-finance-hashalgorithm
    #:campaign-finance-normalizedhash
    #:campaign-finance-raw
    #:campaign-finance-rawcontent
    #:campaign-finance-notes
    #:campaign-finance-deleted
    #:campaign-finance-tombstonereason
    #:campaign-finance-extensions
    #:campaign-finance-description
    #:campaign-finance-status
    #:campaign-finance-contentvalidfrom
    #:campaign-finance-contentvaliduntil
    #:campaign-finance-transactionid
    #:campaign-finance-committeeids
    #:campaign-finance-donorrefs
    #:campaign-finance-recipientrefs
    #:campaign-finance-amountrecord
    #:campaign-finance-transactiondate
    #:campaign-finance-memoed
    #:campaign-finance-memotext
    #:campaign-finance-refundofid
    #:campaign-finance-aggregateamount
    #:campaign-finance-employer
    #:campaign-finance-occupation
    #:campaign-finance-sourcesystemids
    #:campaign-finance-entityid
    #:campaign-finance-observationtype
    #:campaign-finance-amount
    #:campaign-finance-currency
    #:campaign-finance-valuetype
    #:campaign-finance-periodstart
    #:campaign-finance-periodend
    #:campaign-finance-fiscalyear
    #:campaign-finance-fiscalquarter
    #:campaign-finance-reportedat
    #:campaign-finance-counterpartyids
    #:campaign-finance-instrument
    #:campaign-finance-units
    #:campaign-finance-unitprice
    #:campaign-finance-percentage
    #:campaign-finance-methodology
    #:campaign-finance-qualifications
    #:campaign-finance-committeeid
    #:campaign-finance-donorid
    #:campaign-finance-recipientid
    #:campaign-finance-filingid
    #:campaign-finance-contributiontype
    #:campaign-finance-electioncycle
    #:claim
    #:MAKE-claim
    #:COPY-claim
    #:claim-P
    #:+claim-WIRE-FIELDS+
    #:claim-id
    #:claim-rev
    #:claim-dataset
    #:claim-dtype
    #:claim-schemaversion
    #:claim-externalids
    #:claim-aliases
    #:claim-sources
    #:claim-sourceurls
    #:claim-sourcerecordids
    #:claim-sourcekinds
    #:claim-sourcelicense
    #:claim-sourceterms
    #:claim-sourceretrievedat
    #:claim-collectedat
    #:claim-observedat
    #:claim-firstseenat
    #:claim-lastseenat
    #:claim-createdat
    #:claim-updatedat
    #:claim-validfrom
    #:claim-validuntil
    #:claim-expiresat
    #:claim-collector
    #:claim-collectorversion
    #:claim-collectionmethod
    #:claim-collectionstatus
    #:claim-runid
    #:claim-correlationid
    #:claim-causationid
    #:claim-parentid
    #:claim-rootid
    #:claim-confidence
    #:claim-confidencebasis
    #:claim-qualityscore
    #:claim-completenessscore
    #:claim-verificationstatus
    #:claim-verifiedat
    #:claim-verifiedby
    #:claim-provenance
    #:claim-chainofcustody
    #:claim-transformhistory
    #:claim-labels
    #:claim-tags
    #:claim-topics
    #:claim-language
    #:claim-jurisdiction
    #:claim-countrycode
    #:claim-regioncode
    #:claim-timezone
    #:claim-sensitivity
    #:claim-visibility
    #:claim-owner
    #:claim-accesscontrol
    #:claim-legalbasis
    #:claim-retentionpolicy
    #:claim-contenttype
    #:claim-encoding
    #:claim-sizebytes
    #:claim-contenthash
    #:claim-hashalgorithm
    #:claim-normalizedhash
    #:claim-raw
    #:claim-rawcontent
    #:claim-notes
    #:claim-deleted
    #:claim-tombstonereason
    #:claim-extensions
    #:claim-description
    #:claim-status
    #:claim-contentvalidfrom
    #:claim-contentvaliduntil
    #:claim-proposition
    #:claim-subjectrefs
    #:claim-objectrefs
    #:claim-supportingsourceids
    #:claim-reviewids
    #:claim-truthstatus
    #:claim-verificationmethod
    #:claim-derivedfromclaimids
    #:claim-scope
    #:claim-claim
    #:claim-claimantid
    #:claim-subjectids
    #:claim-predicate
    #:claim-object
    #:claim-claimtype
    #:claim-polarity
    #:claim-supportingevidenceids
    #:claim-contradictingevidenceids
    #:claim-adjudication
    #:concept
    #:MAKE-concept
    #:COPY-concept
    #:concept-P
    #:+concept-WIRE-FIELDS+
    #:concept-id
    #:concept-rev
    #:concept-dataset
    #:concept-dtype
    #:concept-schemaversion
    #:concept-externalids
    #:concept-aliases
    #:concept-sources
    #:concept-sourceurls
    #:concept-sourcerecordids
    #:concept-sourcekinds
    #:concept-sourcelicense
    #:concept-sourceterms
    #:concept-sourceretrievedat
    #:concept-collectedat
    #:concept-observedat
    #:concept-firstseenat
    #:concept-lastseenat
    #:concept-createdat
    #:concept-updatedat
    #:concept-validfrom
    #:concept-validuntil
    #:concept-expiresat
    #:concept-collector
    #:concept-collectorversion
    #:concept-collectionmethod
    #:concept-collectionstatus
    #:concept-runid
    #:concept-correlationid
    #:concept-causationid
    #:concept-parentid
    #:concept-rootid
    #:concept-confidence
    #:concept-confidencebasis
    #:concept-qualityscore
    #:concept-completenessscore
    #:concept-verificationstatus
    #:concept-verifiedat
    #:concept-verifiedby
    #:concept-provenance
    #:concept-chainofcustody
    #:concept-transformhistory
    #:concept-labels
    #:concept-tags
    #:concept-topics
    #:concept-language
    #:concept-jurisdiction
    #:concept-countrycode
    #:concept-regioncode
    #:concept-timezone
    #:concept-sensitivity
    #:concept-visibility
    #:concept-owner
    #:concept-accesscontrol
    #:concept-legalbasis
    #:concept-retentionpolicy
    #:concept-contenttype
    #:concept-encoding
    #:concept-sizebytes
    #:concept-contenthash
    #:concept-hashalgorithm
    #:concept-normalizedhash
    #:concept-raw
    #:concept-rawcontent
    #:concept-notes
    #:concept-deleted
    #:concept-tombstonereason
    #:concept-extensions
    #:concept-description
    #:concept-status
    #:concept-contentvalidfrom
    #:concept-contentvaliduntil
    #:concept-conceptid
    #:concept-vocabulary
    #:concept-namespace
    #:concept-version
    #:concept-preferredlabel
    #:concept-synonyms
    #:concept-definitionsourceids
    #:concept-mappingids
    #:concept-term
    #:concept-definition
    #:concept-domain
    #:concept-broaderids
    #:concept-narrowerids
    #:concept-relatedids
    #:concept-examples
    #:concept-criteria
    #:contract
    #:MAKE-contract
    #:COPY-contract
    #:contract-P
    #:+contract-WIRE-FIELDS+
    #:contract-id
    #:contract-rev
    #:contract-dataset
    #:contract-dtype
    #:contract-schemaversion
    #:contract-externalids
    #:contract-aliases
    #:contract-sources
    #:contract-sourceurls
    #:contract-sourcerecordids
    #:contract-sourcekinds
    #:contract-sourcelicense
    #:contract-sourceterms
    #:contract-sourceretrievedat
    #:contract-collectedat
    #:contract-observedat
    #:contract-firstseenat
    #:contract-lastseenat
    #:contract-createdat
    #:contract-updatedat
    #:contract-validfrom
    #:contract-validuntil
    #:contract-expiresat
    #:contract-collector
    #:contract-collectorversion
    #:contract-collectionmethod
    #:contract-collectionstatus
    #:contract-runid
    #:contract-correlationid
    #:contract-causationid
    #:contract-parentid
    #:contract-rootid
    #:contract-confidence
    #:contract-confidencebasis
    #:contract-qualityscore
    #:contract-completenessscore
    #:contract-verificationstatus
    #:contract-verifiedat
    #:contract-verifiedby
    #:contract-provenance
    #:contract-chainofcustody
    #:contract-transformhistory
    #:contract-labels
    #:contract-tags
    #:contract-topics
    #:contract-language
    #:contract-jurisdiction
    #:contract-countrycode
    #:contract-regioncode
    #:contract-timezone
    #:contract-sensitivity
    #:contract-visibility
    #:contract-owner
    #:contract-accesscontrol
    #:contract-legalbasis
    #:contract-retentionpolicy
    #:contract-contenttype
    #:contract-encoding
    #:contract-sizebytes
    #:contract-contenthash
    #:contract-hashalgorithm
    #:contract-normalizedhash
    #:contract-raw
    #:contract-rawcontent
    #:contract-notes
    #:contract-deleted
    #:contract-tombstonereason
    #:contract-extensions
    #:contract-description
    #:contract-status
    #:contract-contentvalidfrom
    #:contract-contentvaliduntil
    #:contract-parentawardid
    #:contract-primeawardid
    #:contract-partyroles
    #:contract-fundingrecords
    #:contract-lineitems
    #:contract-clauseids
    #:contract-deliverableids
    #:contract-performancelocationids
    #:contract-sourcesystemids
    #:contract-contractid
    #:contract-awardid
    #:contract-solicitationid
    #:contract-vehicleid
    #:contract-buyerid
    #:contract-sellerid
    #:contract-agencyids
    #:contract-vendorids
    #:contract-subcontractorids
    #:contract-scope
    #:contract-awardtype
    #:contract-competitiontype
    #:contract-signedat
    #:contract-startat
    #:contract-endat
    #:contract-ceilingamount
    #:contract-potentialamount
    #:contract-obligatedamount
    #:contract-outlayamount
    #:contract-recognizedrevenue
    #:contract-currency
    #:contract-naics
    #:contract-psc
    #:contract-placeofperformance
    #:contract-modifications
    #:dataset-manifest-count-entry
    #:MAKE-dataset-manifest-count-entry
    #:COPY-dataset-manifest-count-entry
    #:dataset-manifest-count-entry-P
    #:+dataset-manifest-count-entry-WIRE-FIELDS+
    #:dataset-manifest-count-entry-key
    #:dataset-manifest-count-entry-value
    #:dataset-manifest
    #:MAKE-dataset-manifest
    #:COPY-dataset-manifest
    #:dataset-manifest-P
    #:+dataset-manifest-WIRE-FIELDS+
    #:dataset-manifest-id
    #:dataset-manifest-rev
    #:dataset-manifest-dataset
    #:dataset-manifest-dtype
    #:dataset-manifest-schemaversion
    #:dataset-manifest-externalids
    #:dataset-manifest-aliases
    #:dataset-manifest-sources
    #:dataset-manifest-sourceurls
    #:dataset-manifest-sourcerecordids
    #:dataset-manifest-sourcekinds
    #:dataset-manifest-sourcelicense
    #:dataset-manifest-sourceterms
    #:dataset-manifest-sourceretrievedat
    #:dataset-manifest-collectedat
    #:dataset-manifest-observedat
    #:dataset-manifest-firstseenat
    #:dataset-manifest-lastseenat
    #:dataset-manifest-createdat
    #:dataset-manifest-updatedat
    #:dataset-manifest-validfrom
    #:dataset-manifest-validuntil
    #:dataset-manifest-expiresat
    #:dataset-manifest-collector
    #:dataset-manifest-collectorversion
    #:dataset-manifest-collectionmethod
    #:dataset-manifest-collectionstatus
    #:dataset-manifest-runid
    #:dataset-manifest-correlationid
    #:dataset-manifest-causationid
    #:dataset-manifest-parentid
    #:dataset-manifest-rootid
    #:dataset-manifest-confidence
    #:dataset-manifest-confidencebasis
    #:dataset-manifest-qualityscore
    #:dataset-manifest-completenessscore
    #:dataset-manifest-verificationstatus
    #:dataset-manifest-verifiedat
    #:dataset-manifest-verifiedby
    #:dataset-manifest-provenance
    #:dataset-manifest-chainofcustody
    #:dataset-manifest-transformhistory
    #:dataset-manifest-labels
    #:dataset-manifest-tags
    #:dataset-manifest-topics
    #:dataset-manifest-language
    #:dataset-manifest-jurisdiction
    #:dataset-manifest-countrycode
    #:dataset-manifest-regioncode
    #:dataset-manifest-timezone
    #:dataset-manifest-sensitivity
    #:dataset-manifest-visibility
    #:dataset-manifest-owner
    #:dataset-manifest-accesscontrol
    #:dataset-manifest-legalbasis
    #:dataset-manifest-retentionpolicy
    #:dataset-manifest-contenttype
    #:dataset-manifest-encoding
    #:dataset-manifest-sizebytes
    #:dataset-manifest-contenthash
    #:dataset-manifest-hashalgorithm
    #:dataset-manifest-normalizedhash
    #:dataset-manifest-raw
    #:dataset-manifest-rawcontent
    #:dataset-manifest-notes
    #:dataset-manifest-deleted
    #:dataset-manifest-tombstonereason
    #:dataset-manifest-extensions
    #:dataset-manifest-description
    #:dataset-manifest-status
    #:dataset-manifest-contentvalidfrom
    #:dataset-manifest-contentvaliduntil
    #:dataset-manifest-datasetid
    #:dataset-manifest-datasetversion
    #:dataset-manifest-profile
    #:dataset-manifest-profileversion
    #:dataset-manifest-schemarevision
    #:dataset-manifest-documentversions
    #:dataset-manifest-sourcedatasetids
    #:dataset-manifest-synccursor
    #:dataset-manifest-syncstatus
    #:dataset-manifest-validatedat
    #:dataset-manifest-manifesttype
    #:dataset-manifest-name
    #:dataset-manifest-actor
    #:dataset-manifest-consumerpath
    #:dataset-manifest-targetoptions
    #:dataset-manifest-documentids
    #:dataset-manifest-countsbydtype
    #:dataset-manifest-recordcount
    #:dataset-manifest-payloadhashalgorithm
    #:dataset-manifest-payloadcontenthash
    #:dataset-manifest-files
    #:dataset-manifest-schemaversions
    #:dataset-manifest-generatedat
    #:education
    #:MAKE-education
    #:COPY-education
    #:education-P
    #:+education-WIRE-FIELDS+
    #:education-id
    #:education-rev
    #:education-dataset
    #:education-dtype
    #:education-schemaversion
    #:education-externalids
    #:education-aliases
    #:education-sources
    #:education-sourceurls
    #:education-sourcerecordids
    #:education-sourcekinds
    #:education-sourcelicense
    #:education-sourceterms
    #:education-sourceretrievedat
    #:education-collectedat
    #:education-observedat
    #:education-firstseenat
    #:education-lastseenat
    #:education-createdat
    #:education-updatedat
    #:education-validfrom
    #:education-validuntil
    #:education-expiresat
    #:education-collector
    #:education-collectorversion
    #:education-collectionmethod
    #:education-collectionstatus
    #:education-runid
    #:education-correlationid
    #:education-causationid
    #:education-parentid
    #:education-rootid
    #:education-confidence
    #:education-confidencebasis
    #:education-qualityscore
    #:education-completenessscore
    #:education-verificationstatus
    #:education-verifiedat
    #:education-verifiedby
    #:education-provenance
    #:education-chainofcustody
    #:education-transformhistory
    #:education-labels
    #:education-tags
    #:education-topics
    #:education-language
    #:education-jurisdiction
    #:education-countrycode
    #:education-regioncode
    #:education-timezone
    #:education-sensitivity
    #:education-visibility
    #:education-owner
    #:education-accesscontrol
    #:education-legalbasis
    #:education-retentionpolicy
    #:education-contenttype
    #:education-encoding
    #:education-sizebytes
    #:education-contenthash
    #:education-hashalgorithm
    #:education-normalizedhash
    #:education-raw
    #:education-rawcontent
    #:education-notes
    #:education-deleted
    #:education-tombstonereason
    #:education-extensions
    #:education-description
    #:education-status
    #:education-contentvalidfrom
    #:education-contentvaliduntil
    #:education-educationtype
    #:education-credentialid
    #:education-programid
    #:education-attendancestatus
    #:education-awardedat
    #:education-thesistitle
    #:education-advisorids
    #:education-personid
    #:education-institutionid
    #:education-degree
    #:education-field
    #:education-startat
    #:education-endat
    #:education-graduated
    #:education-honors
    #:employment
    #:MAKE-employment
    #:COPY-employment
    #:employment-P
    #:+employment-WIRE-FIELDS+
    #:employment-id
    #:employment-rev
    #:employment-dataset
    #:employment-dtype
    #:employment-schemaversion
    #:employment-externalids
    #:employment-aliases
    #:employment-sources
    #:employment-sourceurls
    #:employment-sourcerecordids
    #:employment-sourcekinds
    #:employment-sourcelicense
    #:employment-sourceterms
    #:employment-sourceretrievedat
    #:employment-collectedat
    #:employment-observedat
    #:employment-firstseenat
    #:employment-lastseenat
    #:employment-createdat
    #:employment-updatedat
    #:employment-validfrom
    #:employment-validuntil
    #:employment-expiresat
    #:employment-collector
    #:employment-collectorversion
    #:employment-collectionmethod
    #:employment-collectionstatus
    #:employment-runid
    #:employment-correlationid
    #:employment-causationid
    #:employment-parentid
    #:employment-rootid
    #:employment-confidence
    #:employment-confidencebasis
    #:employment-qualityscore
    #:employment-completenessscore
    #:employment-verificationstatus
    #:employment-verifiedat
    #:employment-verifiedby
    #:employment-provenance
    #:employment-chainofcustody
    #:employment-transformhistory
    #:employment-labels
    #:employment-tags
    #:employment-topics
    #:employment-language
    #:employment-jurisdiction
    #:employment-countrycode
    #:employment-regioncode
    #:employment-timezone
    #:employment-sensitivity
    #:employment-visibility
    #:employment-owner
    #:employment-accesscontrol
    #:employment-legalbasis
    #:employment-retentionpolicy
    #:employment-contenttype
    #:employment-encoding
    #:employment-sizebytes
    #:employment-contenthash
    #:employment-hashalgorithm
    #:employment-normalizedhash
    #:employment-raw
    #:employment-rawcontent
    #:employment-notes
    #:employment-deleted
    #:employment-tombstonereason
    #:employment-extensions
    #:employment-description
    #:employment-status
    #:employment-contentvalidfrom
    #:employment-contentvaliduntil
    #:employment-roleids
    #:employment-reportstoids
    #:employment-appointmenttype
    #:employment-appointedbyids
    #:employment-compensationrecords
    #:employment-responsibilities
    #:employment-terminationreason
    #:employment-personid
    #:employment-organizationid
    #:employment-title
    #:employment-department
    #:employment-startat
    #:employment-endat
    #:employment-current
    #:employment-employmenttype
    #:employment-locationid
    #:entity
    #:MAKE-entity
    #:COPY-entity
    #:entity-P
    #:+entity-WIRE-FIELDS+
    #:entity-id
    #:entity-rev
    #:entity-dataset
    #:entity-dtype
    #:entity-schemaversion
    #:entity-externalids
    #:entity-aliases
    #:entity-sources
    #:entity-sourceurls
    #:entity-sourcerecordids
    #:entity-sourcekinds
    #:entity-sourcelicense
    #:entity-sourceterms
    #:entity-sourceretrievedat
    #:entity-collectedat
    #:entity-observedat
    #:entity-firstseenat
    #:entity-lastseenat
    #:entity-createdat
    #:entity-updatedat
    #:entity-validfrom
    #:entity-validuntil
    #:entity-expiresat
    #:entity-collector
    #:entity-collectorversion
    #:entity-collectionmethod
    #:entity-collectionstatus
    #:entity-runid
    #:entity-correlationid
    #:entity-causationid
    #:entity-parentid
    #:entity-rootid
    #:entity-confidence
    #:entity-confidencebasis
    #:entity-qualityscore
    #:entity-completenessscore
    #:entity-verificationstatus
    #:entity-verifiedat
    #:entity-verifiedby
    #:entity-provenance
    #:entity-chainofcustody
    #:entity-transformhistory
    #:entity-labels
    #:entity-tags
    #:entity-topics
    #:entity-language
    #:entity-jurisdiction
    #:entity-countrycode
    #:entity-regioncode
    #:entity-timezone
    #:entity-sensitivity
    #:entity-visibility
    #:entity-owner
    #:entity-accesscontrol
    #:entity-legalbasis
    #:entity-retentionpolicy
    #:entity-contenttype
    #:entity-encoding
    #:entity-sizebytes
    #:entity-contenthash
    #:entity-hashalgorithm
    #:entity-normalizedhash
    #:entity-raw
    #:entity-rawcontent
    #:entity-notes
    #:entity-deleted
    #:entity-tombstonereason
    #:entity-extensions
    #:entity-description
    #:entity-status
    #:entity-contentvalidfrom
    #:entity-contentvaliduntil
    #:entity-entityclass
    #:entity-canonicalname
    #:entity-sameasids
    #:entity-duplicatecandidateids
    #:entity-identityconfidence
    #:entity-identitykeys
    #:entity-etype
    #:entity-eid
    #:entity-name
    #:entity-displayname
    #:entity-legalname
    #:entity-shortname
    #:entity-formernames
    #:entity-bio
    #:entity-payloadjurisdiction
    #:entity-country
    #:entity-foundedat
    #:entity-dissolvedat
    #:entity-website
    #:entity-imageurl
    #:entity-logourl
    #:entity-payloadexternalids
    #:entity-contactids
    #:entity-locationids
    #:event
    #:MAKE-event
    #:COPY-event
    #:event-P
    #:+event-WIRE-FIELDS+
    #:event-id
    #:event-rev
    #:event-dataset
    #:event-dtype
    #:event-schemaversion
    #:event-externalids
    #:event-aliases
    #:event-sources
    #:event-sourceurls
    #:event-sourcerecordids
    #:event-sourcekinds
    #:event-sourcelicense
    #:event-sourceterms
    #:event-sourceretrievedat
    #:event-collectedat
    #:event-observedat
    #:event-firstseenat
    #:event-lastseenat
    #:event-createdat
    #:event-updatedat
    #:event-validfrom
    #:event-validuntil
    #:event-expiresat
    #:event-collector
    #:event-collectorversion
    #:event-collectionmethod
    #:event-collectionstatus
    #:event-runid
    #:event-correlationid
    #:event-causationid
    #:event-parentid
    #:event-rootid
    #:event-confidence
    #:event-confidencebasis
    #:event-qualityscore
    #:event-completenessscore
    #:event-verificationstatus
    #:event-verifiedat
    #:event-verifiedby
    #:event-provenance
    #:event-chainofcustody
    #:event-transformhistory
    #:event-labels
    #:event-tags
    #:event-topics
    #:event-language
    #:event-jurisdiction
    #:event-countrycode
    #:event-regioncode
    #:event-timezone
    #:event-sensitivity
    #:event-visibility
    #:event-owner
    #:event-accesscontrol
    #:event-legalbasis
    #:event-retentionpolicy
    #:event-contenttype
    #:event-encoding
    #:event-sizebytes
    #:event-contenthash
    #:event-hashalgorithm
    #:event-normalizedhash
    #:event-raw
    #:event-rawcontent
    #:event-notes
    #:event-deleted
    #:event-tombstonereason
    #:event-extensions
    #:event-description
    #:event-status
    #:event-contentvalidfrom
    #:event-contentvaliduntil
    #:event-eventtypeid
    #:event-parenteventid
    #:event-childeventids
    #:event-participantroles
    #:event-actionrecords
    #:event-sourceeventids
    #:event-recurrencerule
    #:event-resultids
    #:event-claimids
    #:event-eventkind
    #:event-name
    #:event-participantids
    #:event-participants
    #:event-organizerids
    #:event-sponsorids
    #:event-locationids
    #:event-startat
    #:event-endat
    #:event-outcome
    #:event-agenda
    #:event-decisions
    #:event-actions
    #:event-amount
    #:event-currency
    #:event-payloadjurisdiction
    #:event-caseid
    #:event-contractid
    #:event-meetingid
    #:evidence-record
    #:MAKE-evidence-record
    #:COPY-evidence-record
    #:evidence-record-P
    #:+evidence-record-WIRE-FIELDS+
    #:evidence-record-id
    #:evidence-record-rev
    #:evidence-record-dataset
    #:evidence-record-dtype
    #:evidence-record-schemaversion
    #:evidence-record-externalids
    #:evidence-record-aliases
    #:evidence-record-sources
    #:evidence-record-sourceurls
    #:evidence-record-sourcerecordids
    #:evidence-record-sourcekinds
    #:evidence-record-sourcelicense
    #:evidence-record-sourceterms
    #:evidence-record-sourceretrievedat
    #:evidence-record-collectedat
    #:evidence-record-observedat
    #:evidence-record-firstseenat
    #:evidence-record-lastseenat
    #:evidence-record-createdat
    #:evidence-record-updatedat
    #:evidence-record-validfrom
    #:evidence-record-validuntil
    #:evidence-record-expiresat
    #:evidence-record-collector
    #:evidence-record-collectorversion
    #:evidence-record-collectionmethod
    #:evidence-record-collectionstatus
    #:evidence-record-runid
    #:evidence-record-correlationid
    #:evidence-record-causationid
    #:evidence-record-parentid
    #:evidence-record-rootid
    #:evidence-record-confidencebasis
    #:evidence-record-qualityscore
    #:evidence-record-completenessscore
    #:evidence-record-verificationstatus
    #:evidence-record-verifiedat
    #:evidence-record-verifiedby
    #:evidence-record-provenance
    #:evidence-record-chainofcustody
    #:evidence-record-transformhistory
    #:evidence-record-labels
    #:evidence-record-tags
    #:evidence-record-topics
    #:evidence-record-language
    #:evidence-record-jurisdiction
    #:evidence-record-countrycode
    #:evidence-record-regioncode
    #:evidence-record-timezone
    #:evidence-record-sensitivity
    #:evidence-record-visibility
    #:evidence-record-owner
    #:evidence-record-accesscontrol
    #:evidence-record-legalbasis
    #:evidence-record-retentionpolicy
    #:evidence-record-contenttype
    #:evidence-record-encoding
    #:evidence-record-sizebytes
    #:evidence-record-contenthash
    #:evidence-record-hashalgorithm
    #:evidence-record-normalizedhash
    #:evidence-record-raw
    #:evidence-record-rawcontent
    #:evidence-record-notes
    #:evidence-record-deleted
    #:evidence-record-tombstonereason
    #:evidence-record-extensions
    #:evidence-record-description
    #:evidence-record-status
    #:evidence-record-contentvalidfrom
    #:evidence-record-contentvaliduntil
    #:evidence-record-subjectids
    #:evidence-record-claimids
    #:evidence-record-exactcontent
    #:evidence-record-normalizedcontent
    #:evidence-record-extractionmethod
    #:evidence-record-captureactionid
    #:evidence-record-custodyactions
    #:evidence-record-hashes
    #:evidence-record-admissibilitystatus
    #:evidence-record-evidenceid
    #:evidence-record-sourceid
    #:evidence-record-sourceurl
    #:evidence-record-kind
    #:evidence-record-role
    #:evidence-record-claim
    #:evidence-record-observation
    #:evidence-record-excerpt
    #:evidence-record-locator
    #:evidence-record-page
    #:evidence-record-section
    #:evidence-record-payloadcollectedat
    #:evidence-record-payloadobservedat
    #:evidence-record-payloadcontenthash
    #:evidence-record-payloadhashalgorithm
    #:evidence-record-payloadconfidence
    #:evidence-record-corroborates
    #:evidence-record-contradicts
    #:evidence-record-payloadchainofcustody
    #:evidence-record-attachments
    #:evidence-record-payloadnotes
    #:evidence-record-metadata
    #:financial-observation
    #:MAKE-financial-observation
    #:COPY-financial-observation
    #:financial-observation-P
    #:+financial-observation-WIRE-FIELDS+
    #:financial-observation-id
    #:financial-observation-rev
    #:financial-observation-dataset
    #:financial-observation-dtype
    #:financial-observation-schemaversion
    #:financial-observation-externalids
    #:financial-observation-aliases
    #:financial-observation-sources
    #:financial-observation-sourceurls
    #:financial-observation-sourcerecordids
    #:financial-observation-sourcekinds
    #:financial-observation-sourcelicense
    #:financial-observation-sourceterms
    #:financial-observation-sourceretrievedat
    #:financial-observation-collectedat
    #:financial-observation-observedat
    #:financial-observation-firstseenat
    #:financial-observation-lastseenat
    #:financial-observation-createdat
    #:financial-observation-updatedat
    #:financial-observation-validfrom
    #:financial-observation-validuntil
    #:financial-observation-expiresat
    #:financial-observation-collector
    #:financial-observation-collectorversion
    #:financial-observation-collectionmethod
    #:financial-observation-collectionstatus
    #:financial-observation-runid
    #:financial-observation-correlationid
    #:financial-observation-causationid
    #:financial-observation-parentid
    #:financial-observation-rootid
    #:financial-observation-confidence
    #:financial-observation-confidencebasis
    #:financial-observation-qualityscore
    #:financial-observation-completenessscore
    #:financial-observation-verificationstatus
    #:financial-observation-verifiedat
    #:financial-observation-verifiedby
    #:financial-observation-provenance
    #:financial-observation-chainofcustody
    #:financial-observation-transformhistory
    #:financial-observation-labels
    #:financial-observation-tags
    #:financial-observation-topics
    #:financial-observation-language
    #:financial-observation-jurisdiction
    #:financial-observation-countrycode
    #:financial-observation-regioncode
    #:financial-observation-timezone
    #:financial-observation-sensitivity
    #:financial-observation-visibility
    #:financial-observation-owner
    #:financial-observation-accesscontrol
    #:financial-observation-legalbasis
    #:financial-observation-retentionpolicy
    #:financial-observation-contenttype
    #:financial-observation-encoding
    #:financial-observation-sizebytes
    #:financial-observation-contenthash
    #:financial-observation-hashalgorithm
    #:financial-observation-normalizedhash
    #:financial-observation-raw
    #:financial-observation-rawcontent
    #:financial-observation-notes
    #:financial-observation-deleted
    #:financial-observation-tombstonereason
    #:financial-observation-extensions
    #:financial-observation-description
    #:financial-observation-status
    #:financial-observation-contentvalidfrom
    #:financial-observation-contentvaliduntil
    #:financial-observation-transactionid
    #:financial-observation-payerids
    #:financial-observation-payeeids
    #:financial-observation-accountids
    #:financial-observation-amountrecord
    #:financial-observation-amountbasis
    #:financial-observation-reportingstandard
    #:financial-observation-filingids
    #:financial-observation-sourcetransactionids
    #:financial-observation-memoed
    #:financial-observation-refunded
    #:financial-observation-entityid
    #:financial-observation-observationtype
    #:financial-observation-amount
    #:financial-observation-currency
    #:financial-observation-valuetype
    #:financial-observation-periodstart
    #:financial-observation-periodend
    #:financial-observation-fiscalyear
    #:financial-observation-fiscalquarter
    #:financial-observation-reportedat
    #:financial-observation-counterpartyids
    #:financial-observation-instrument
    #:financial-observation-units
    #:financial-observation-unitprice
    #:financial-observation-percentage
    #:financial-observation-methodology
    #:financial-observation-qualifications
    #:grant
    #:MAKE-grant
    #:COPY-grant
    #:grant-P
    #:+grant-WIRE-FIELDS+
    #:grant-id
    #:grant-rev
    #:grant-dataset
    #:grant-dtype
    #:grant-schemaversion
    #:grant-externalids
    #:grant-aliases
    #:grant-sources
    #:grant-sourceurls
    #:grant-sourcerecordids
    #:grant-sourcekinds
    #:grant-sourcelicense
    #:grant-sourceterms
    #:grant-sourceretrievedat
    #:grant-collectedat
    #:grant-observedat
    #:grant-firstseenat
    #:grant-lastseenat
    #:grant-createdat
    #:grant-updatedat
    #:grant-validfrom
    #:grant-validuntil
    #:grant-expiresat
    #:grant-collector
    #:grant-collectorversion
    #:grant-collectionmethod
    #:grant-collectionstatus
    #:grant-runid
    #:grant-correlationid
    #:grant-causationid
    #:grant-parentid
    #:grant-rootid
    #:grant-confidence
    #:grant-confidencebasis
    #:grant-qualityscore
    #:grant-completenessscore
    #:grant-verificationstatus
    #:grant-verifiedat
    #:grant-verifiedby
    #:grant-provenance
    #:grant-chainofcustody
    #:grant-transformhistory
    #:grant-labels
    #:grant-tags
    #:grant-topics
    #:grant-language
    #:grant-jurisdiction
    #:grant-countrycode
    #:grant-regioncode
    #:grant-timezone
    #:grant-sensitivity
    #:grant-visibility
    #:grant-owner
    #:grant-accesscontrol
    #:grant-legalbasis
    #:grant-retentionpolicy
    #:grant-contenttype
    #:grant-encoding
    #:grant-sizebytes
    #:grant-contenthash
    #:grant-hashalgorithm
    #:grant-normalizedhash
    #:grant-raw
    #:grant-rawcontent
    #:grant-notes
    #:grant-deleted
    #:grant-tombstonereason
    #:grant-extensions
    #:grant-description
    #:grant-status
    #:grant-contentvalidfrom
    #:grant-contentvaliduntil
    #:grant-awardnumber
    #:grant-primerecipientid
    #:grant-subrecipientids
    #:grant-programid
    #:grant-fundingrecords
    #:grant-assistancelistingids
    #:grant-matchingamount
    #:grant-performancelocationids
    #:grant-objectiveids
    #:grant-reportids
    #:grant-contractid
    #:grant-awardid
    #:grant-solicitationid
    #:grant-vehicleid
    #:grant-buyerid
    #:grant-sellerid
    #:grant-agencyids
    #:grant-vendorids
    #:grant-subcontractorids
    #:grant-scope
    #:grant-awardtype
    #:grant-competitiontype
    #:grant-signedat
    #:grant-startat
    #:grant-endat
    #:grant-ceilingamount
    #:grant-potentialamount
    #:grant-obligatedamount
    #:grant-outlayamount
    #:grant-recognizedrevenue
    #:grant-currency
    #:grant-naics
    #:grant-psc
    #:grant-placeofperformance
    #:grant-modifications
    #:grant-grantorid
    #:grant-recipientids
    #:grant-program
    #:grant-assistancelisting
    #:grant-matchingrequired
    #:legal-case
    #:MAKE-legal-case
    #:COPY-legal-case
    #:legal-case-P
    #:+legal-case-WIRE-FIELDS+
    #:legal-case-id
    #:legal-case-rev
    #:legal-case-dataset
    #:legal-case-dtype
    #:legal-case-schemaversion
    #:legal-case-externalids
    #:legal-case-aliases
    #:legal-case-sources
    #:legal-case-sourceurls
    #:legal-case-sourcerecordids
    #:legal-case-sourcekinds
    #:legal-case-sourcelicense
    #:legal-case-sourceterms
    #:legal-case-sourceretrievedat
    #:legal-case-collectedat
    #:legal-case-observedat
    #:legal-case-firstseenat
    #:legal-case-lastseenat
    #:legal-case-createdat
    #:legal-case-updatedat
    #:legal-case-validfrom
    #:legal-case-validuntil
    #:legal-case-expiresat
    #:legal-case-collector
    #:legal-case-collectorversion
    #:legal-case-collectionmethod
    #:legal-case-collectionstatus
    #:legal-case-runid
    #:legal-case-correlationid
    #:legal-case-causationid
    #:legal-case-parentid
    #:legal-case-rootid
    #:legal-case-confidence
    #:legal-case-confidencebasis
    #:legal-case-qualityscore
    #:legal-case-completenessscore
    #:legal-case-verificationstatus
    #:legal-case-verifiedat
    #:legal-case-verifiedby
    #:legal-case-provenance
    #:legal-case-chainofcustody
    #:legal-case-transformhistory
    #:legal-case-labels
    #:legal-case-tags
    #:legal-case-topics
    #:legal-case-language
    #:legal-case-jurisdiction
    #:legal-case-countrycode
    #:legal-case-regioncode
    #:legal-case-timezone
    #:legal-case-sensitivity
    #:legal-case-visibility
    #:legal-case-owner
    #:legal-case-accesscontrol
    #:legal-case-legalbasis
    #:legal-case-retentionpolicy
    #:legal-case-contenttype
    #:legal-case-encoding
    #:legal-case-sizebytes
    #:legal-case-contenthash
    #:legal-case-hashalgorithm
    #:legal-case-normalizedhash
    #:legal-case-raw
    #:legal-case-rawcontent
    #:legal-case-notes
    #:legal-case-deleted
    #:legal-case-tombstonereason
    #:legal-case-extensions
    #:legal-case-description
    #:legal-case-status
    #:legal-case-contentvalidfrom
    #:legal-case-contentvaliduntil
    #:legal-case-courtid
    #:legal-case-docketid
    #:legal-case-partyroles
    #:legal-case-relatedcaseids
    #:legal-case-motionids
    #:legal-case-orderids
    #:legal-case-opinionids
    #:legal-case-appealcaseids
    #:legal-case-disposition
    #:legal-case-precedentialstatus
    #:legal-case-casenumber
    #:legal-case-casename
    #:legal-case-court
    #:legal-case-payloadjurisdiction
    #:legal-case-judgeids
    #:legal-case-partyids
    #:legal-case-plaintiffids
    #:legal-case-defendantids
    #:legal-case-attorneyids
    #:legal-case-casetype
    #:legal-case-claims
    #:legal-case-filedat
    #:legal-case-closedat
    #:legal-case-docketentries
    #:legal-case-outcome
    #:legal-case-citation
    #:lobbying-filing
    #:MAKE-lobbying-filing
    #:COPY-lobbying-filing
    #:lobbying-filing-P
    #:+lobbying-filing-WIRE-FIELDS+
    #:lobbying-filing-id
    #:lobbying-filing-rev
    #:lobbying-filing-dataset
    #:lobbying-filing-dtype
    #:lobbying-filing-schemaversion
    #:lobbying-filing-externalids
    #:lobbying-filing-aliases
    #:lobbying-filing-sources
    #:lobbying-filing-sourceurls
    #:lobbying-filing-sourcerecordids
    #:lobbying-filing-sourcekinds
    #:lobbying-filing-sourcelicense
    #:lobbying-filing-sourceterms
    #:lobbying-filing-sourceretrievedat
    #:lobbying-filing-collectedat
    #:lobbying-filing-observedat
    #:lobbying-filing-firstseenat
    #:lobbying-filing-lastseenat
    #:lobbying-filing-createdat
    #:lobbying-filing-updatedat
    #:lobbying-filing-validfrom
    #:lobbying-filing-validuntil
    #:lobbying-filing-expiresat
    #:lobbying-filing-collector
    #:lobbying-filing-collectorversion
    #:lobbying-filing-collectionmethod
    #:lobbying-filing-collectionstatus
    #:lobbying-filing-runid
    #:lobbying-filing-correlationid
    #:lobbying-filing-causationid
    #:lobbying-filing-parentid
    #:lobbying-filing-rootid
    #:lobbying-filing-confidence
    #:lobbying-filing-confidencebasis
    #:lobbying-filing-qualityscore
    #:lobbying-filing-completenessscore
    #:lobbying-filing-verificationstatus
    #:lobbying-filing-verifiedat
    #:lobbying-filing-verifiedby
    #:lobbying-filing-provenance
    #:lobbying-filing-chainofcustody
    #:lobbying-filing-transformhistory
    #:lobbying-filing-labels
    #:lobbying-filing-tags
    #:lobbying-filing-topics
    #:lobbying-filing-language
    #:lobbying-filing-jurisdiction
    #:lobbying-filing-countrycode
    #:lobbying-filing-regioncode
    #:lobbying-filing-timezone
    #:lobbying-filing-sensitivity
    #:lobbying-filing-visibility
    #:lobbying-filing-owner
    #:lobbying-filing-accesscontrol
    #:lobbying-filing-legalbasis
    #:lobbying-filing-retentionpolicy
    #:lobbying-filing-contenttype
    #:lobbying-filing-encoding
    #:lobbying-filing-sizebytes
    #:lobbying-filing-contenthash
    #:lobbying-filing-hashalgorithm
    #:lobbying-filing-normalizedhash
    #:lobbying-filing-raw
    #:lobbying-filing-rawcontent
    #:lobbying-filing-notes
    #:lobbying-filing-deleted
    #:lobbying-filing-tombstonereason
    #:lobbying-filing-extensions
    #:lobbying-filing-description
    #:lobbying-filing-status
    #:lobbying-filing-contentvalidfrom
    #:lobbying-filing-contentvaliduntil
    #:lobbying-filing-filingsystem
    #:lobbying-filing-registrantrefs
    #:lobbying-filing-clientrefs
    #:lobbying-filing-lobbyistrefs
    #:lobbying-filing-coveredofficialids
    #:lobbying-filing-issuecodes
    #:lobbying-filing-amountrecords
    #:lobbying-filing-foreignentityids
    #:lobbying-filing-priorfilingid
    #:lobbying-filing-amendsfilingid
    #:lobbying-filing-sourcefilingurl
    #:lobbying-filing-filingid
    #:lobbying-filing-registrantid
    #:lobbying-filing-clientid
    #:lobbying-filing-lobbyistids
    #:lobbying-filing-governmententities
    #:lobbying-filing-issues
    #:lobbying-filing-specificissues
    #:lobbying-filing-income
    #:lobbying-filing-expenses
    #:lobbying-filing-currency
    #:lobbying-filing-periodstart
    #:lobbying-filing-periodend
    #:lobbying-filing-filedat
    #:lobbying-filing-filingtype
    #:lobbying-filing-amendment
    #:lobbying-filing-termination
    #:meeting
    #:MAKE-meeting
    #:COPY-meeting
    #:meeting-P
    #:+meeting-WIRE-FIELDS+
    #:meeting-id
    #:meeting-rev
    #:meeting-dataset
    #:meeting-dtype
    #:meeting-schemaversion
    #:meeting-externalids
    #:meeting-aliases
    #:meeting-sources
    #:meeting-sourceurls
    #:meeting-sourcerecordids
    #:meeting-sourcekinds
    #:meeting-sourcelicense
    #:meeting-sourceterms
    #:meeting-sourceretrievedat
    #:meeting-collectedat
    #:meeting-observedat
    #:meeting-firstseenat
    #:meeting-lastseenat
    #:meeting-createdat
    #:meeting-updatedat
    #:meeting-validfrom
    #:meeting-validuntil
    #:meeting-expiresat
    #:meeting-collector
    #:meeting-collectorversion
    #:meeting-collectionmethod
    #:meeting-collectionstatus
    #:meeting-runid
    #:meeting-correlationid
    #:meeting-causationid
    #:meeting-parentid
    #:meeting-rootid
    #:meeting-confidence
    #:meeting-confidencebasis
    #:meeting-qualityscore
    #:meeting-completenessscore
    #:meeting-verificationstatus
    #:meeting-verifiedat
    #:meeting-verifiedby
    #:meeting-provenance
    #:meeting-chainofcustody
    #:meeting-transformhistory
    #:meeting-labels
    #:meeting-tags
    #:meeting-topics
    #:meeting-language
    #:meeting-jurisdiction
    #:meeting-countrycode
    #:meeting-regioncode
    #:meeting-timezone
    #:meeting-sensitivity
    #:meeting-visibility
    #:meeting-owner
    #:meeting-accesscontrol
    #:meeting-legalbasis
    #:meeting-retentionpolicy
    #:meeting-contenttype
    #:meeting-encoding
    #:meeting-sizebytes
    #:meeting-contenthash
    #:meeting-hashalgorithm
    #:meeting-normalizedhash
    #:meeting-raw
    #:meeting-rawcontent
    #:meeting-notes
    #:meeting-deleted
    #:meeting-tombstonereason
    #:meeting-extensions
    #:meeting-description
    #:meeting-status
    #:meeting-contentvalidfrom
    #:meeting-contentvaliduntil
    #:meeting-meetingtype
    #:meeting-chairids
    #:meeting-attendeeroles
    #:meeting-agendaitemids
    #:meeting-minutefileids
    #:meeting-decisionids
    #:meeting-actionitemids
    #:meeting-parentmeetingid
    #:meeting-recurrencerule
    #:meeting-eventkind
    #:meeting-name
    #:meeting-participantids
    #:meeting-participants
    #:meeting-organizerids
    #:meeting-sponsorids
    #:meeting-locationids
    #:meeting-startat
    #:meeting-endat
    #:meeting-outcome
    #:meeting-agenda
    #:meeting-decisions
    #:meeting-actions
    #:meeting-amount
    #:meeting-currency
    #:meeting-payloadjurisdiction
    #:meeting-caseid
    #:meeting-contractid
    #:meeting-meetingid
    #:observation
    #:MAKE-observation
    #:COPY-observation
    #:observation-P
    #:+observation-WIRE-FIELDS+
    #:observation-id
    #:observation-rev
    #:observation-dataset
    #:observation-dtype
    #:observation-schemaversion
    #:observation-externalids
    #:observation-aliases
    #:observation-sources
    #:observation-sourceurls
    #:observation-sourcerecordids
    #:observation-sourcekinds
    #:observation-sourcelicense
    #:observation-sourceterms
    #:observation-sourceretrievedat
    #:observation-collectedat
    #:observation-observedat
    #:observation-firstseenat
    #:observation-lastseenat
    #:observation-createdat
    #:observation-updatedat
    #:observation-validfrom
    #:observation-validuntil
    #:observation-expiresat
    #:observation-collector
    #:observation-collectorversion
    #:observation-collectionmethod
    #:observation-collectionstatus
    #:observation-runid
    #:observation-correlationid
    #:observation-causationid
    #:observation-parentid
    #:observation-rootid
    #:observation-confidence
    #:observation-confidencebasis
    #:observation-qualityscore
    #:observation-completenessscore
    #:observation-verificationstatus
    #:observation-verifiedat
    #:observation-verifiedby
    #:observation-provenance
    #:observation-chainofcustody
    #:observation-transformhistory
    #:observation-labels
    #:observation-tags
    #:observation-topics
    #:observation-language
    #:observation-jurisdiction
    #:observation-countrycode
    #:observation-regioncode
    #:observation-timezone
    #:observation-sensitivity
    #:observation-visibility
    #:observation-owner
    #:observation-accesscontrol
    #:observation-legalbasis
    #:observation-retentionpolicy
    #:observation-contenttype
    #:observation-encoding
    #:observation-sizebytes
    #:observation-contenthash
    #:observation-hashalgorithm
    #:observation-normalizedhash
    #:observation-raw
    #:observation-rawcontent
    #:observation-notes
    #:observation-deleted
    #:observation-tombstonereason
    #:observation-extensions
    #:observation-description
    #:observation-status
    #:observation-contentvalidfrom
    #:observation-contentvaliduntil
    #:observation-subjectrefs
    #:observation-observedproperty
    #:observation-rawvalue
    #:observation-actionid
    #:observation-observerrefs
    #:observation-uncertainty
    #:observation-observerid
    #:observation-subjectid
    #:observation-observationtype
    #:observation-value
    #:observation-unit
    #:observation-method
    #:observation-instrument
    #:observation-payloadobservedat
    #:ownership
    #:MAKE-ownership
    #:COPY-ownership
    #:ownership-P
    #:+ownership-WIRE-FIELDS+
    #:ownership-id
    #:ownership-rev
    #:ownership-dataset
    #:ownership-dtype
    #:ownership-schemaversion
    #:ownership-externalids
    #:ownership-aliases
    #:ownership-sources
    #:ownership-sourceurls
    #:ownership-sourcerecordids
    #:ownership-sourcekinds
    #:ownership-sourcelicense
    #:ownership-sourceterms
    #:ownership-sourceretrievedat
    #:ownership-collectedat
    #:ownership-observedat
    #:ownership-firstseenat
    #:ownership-lastseenat
    #:ownership-createdat
    #:ownership-updatedat
    #:ownership-validfrom
    #:ownership-validuntil
    #:ownership-expiresat
    #:ownership-collector
    #:ownership-collectorversion
    #:ownership-collectionmethod
    #:ownership-collectionstatus
    #:ownership-runid
    #:ownership-correlationid
    #:ownership-causationid
    #:ownership-parentid
    #:ownership-rootid
    #:ownership-confidence
    #:ownership-confidencebasis
    #:ownership-qualityscore
    #:ownership-completenessscore
    #:ownership-verificationstatus
    #:ownership-verifiedat
    #:ownership-verifiedby
    #:ownership-provenance
    #:ownership-chainofcustody
    #:ownership-transformhistory
    #:ownership-labels
    #:ownership-tags
    #:ownership-topics
    #:ownership-language
    #:ownership-jurisdiction
    #:ownership-countrycode
    #:ownership-regioncode
    #:ownership-timezone
    #:ownership-sensitivity
    #:ownership-visibility
    #:ownership-owner
    #:ownership-accesscontrol
    #:ownership-legalbasis
    #:ownership-retentionpolicy
    #:ownership-contenttype
    #:ownership-encoding
    #:ownership-sizebytes
    #:ownership-contenthash
    #:ownership-hashalgorithm
    #:ownership-normalizedhash
    #:ownership-raw
    #:ownership-rawcontent
    #:ownership-notes
    #:ownership-deleted
    #:ownership-tombstonereason
    #:ownership-extensions
    #:ownership-description
    #:ownership-status
    #:ownership-contentvalidfrom
    #:ownership-contentvaliduntil
    #:ownership-ownerrefs
    #:ownership-ownedrefs
    #:ownership-ownershipinstrument
    #:ownership-percentagebasis
    #:ownership-votingpercentage
    #:ownership-economicpercentage
    #:ownership-valuerecord
    #:ownership-acquisitioneventid
    #:ownership-disposaleventid
    #:ownership-ownerid
    #:ownership-assetid
    #:ownership-ownershiptype
    #:ownership-percentage
    #:ownership-units
    #:ownership-startat
    #:ownership-endat
    #:ownership-beneficial
    #:ownership-direct
    #:policy
    #:MAKE-policy
    #:COPY-policy
    #:policy-P
    #:+policy-WIRE-FIELDS+
    #:policy-id
    #:policy-rev
    #:policy-dataset
    #:policy-dtype
    #:policy-schemaversion
    #:policy-externalids
    #:policy-aliases
    #:policy-sources
    #:policy-sourceurls
    #:policy-sourcerecordids
    #:policy-sourcekinds
    #:policy-sourcelicense
    #:policy-sourceterms
    #:policy-sourceretrievedat
    #:policy-collectedat
    #:policy-observedat
    #:policy-firstseenat
    #:policy-lastseenat
    #:policy-createdat
    #:policy-updatedat
    #:policy-validfrom
    #:policy-validuntil
    #:policy-expiresat
    #:policy-collector
    #:policy-collectorversion
    #:policy-collectionmethod
    #:policy-collectionstatus
    #:policy-runid
    #:policy-correlationid
    #:policy-causationid
    #:policy-parentid
    #:policy-rootid
    #:policy-confidence
    #:policy-confidencebasis
    #:policy-qualityscore
    #:policy-completenessscore
    #:policy-verificationstatus
    #:policy-verifiedat
    #:policy-verifiedby
    #:policy-provenance
    #:policy-chainofcustody
    #:policy-transformhistory
    #:policy-labels
    #:policy-tags
    #:policy-topics
    #:policy-language
    #:policy-jurisdiction
    #:policy-countrycode
    #:policy-regioncode
    #:policy-timezone
    #:policy-sensitivity
    #:policy-visibility
    #:policy-owner
    #:policy-accesscontrol
    #:policy-legalbasis
    #:policy-retentionpolicy
    #:policy-contenttype
    #:policy-encoding
    #:policy-sizebytes
    #:policy-contenthash
    #:policy-hashalgorithm
    #:policy-normalizedhash
    #:policy-raw
    #:policy-rawcontent
    #:policy-notes
    #:policy-deleted
    #:policy-tombstonereason
    #:policy-extensions
    #:policy-description
    #:policy-status
    #:policy-contentvalidfrom
    #:policy-contentvaliduntil
    #:policy-policyversion
    #:policy-parentpolicyid
    #:policy-authorityids
    #:policy-implementationids
    #:policy-textfileids
    #:policy-sectionids
    #:policy-adoptedat
    #:policy-repealedat
    #:policy-supersededbyid
    #:policy-compliancerequirementids
    #:policy-policyid
    #:policy-name
    #:policy-issuerid
    #:policy-payloadjurisdiction
    #:policy-policytype
    #:policy-text
    #:policy-effectiveat
    #:policy-payloadexpiresat
    #:policy-affectedids
    #:procurement
    #:MAKE-procurement
    #:COPY-procurement
    #:procurement-P
    #:+procurement-WIRE-FIELDS+
    #:procurement-id
    #:procurement-rev
    #:procurement-dataset
    #:procurement-dtype
    #:procurement-schemaversion
    #:procurement-externalids
    #:procurement-aliases
    #:procurement-sources
    #:procurement-sourceurls
    #:procurement-sourcerecordids
    #:procurement-sourcekinds
    #:procurement-sourcelicense
    #:procurement-sourceterms
    #:procurement-sourceretrievedat
    #:procurement-collectedat
    #:procurement-observedat
    #:procurement-firstseenat
    #:procurement-lastseenat
    #:procurement-createdat
    #:procurement-updatedat
    #:procurement-validfrom
    #:procurement-validuntil
    #:procurement-expiresat
    #:procurement-collector
    #:procurement-collectorversion
    #:procurement-collectionmethod
    #:procurement-collectionstatus
    #:procurement-runid
    #:procurement-correlationid
    #:procurement-causationid
    #:procurement-parentid
    #:procurement-rootid
    #:procurement-confidence
    #:procurement-confidencebasis
    #:procurement-qualityscore
    #:procurement-completenessscore
    #:procurement-verificationstatus
    #:procurement-verifiedat
    #:procurement-verifiedby
    #:procurement-provenance
    #:procurement-chainofcustody
    #:procurement-transformhistory
    #:procurement-labels
    #:procurement-tags
    #:procurement-topics
    #:procurement-language
    #:procurement-jurisdiction
    #:procurement-countrycode
    #:procurement-regioncode
    #:procurement-timezone
    #:procurement-sensitivity
    #:procurement-visibility
    #:procurement-owner
    #:procurement-accesscontrol
    #:procurement-legalbasis
    #:procurement-retentionpolicy
    #:procurement-contenttype
    #:procurement-encoding
    #:procurement-sizebytes
    #:procurement-contenthash
    #:procurement-hashalgorithm
    #:procurement-normalizedhash
    #:procurement-raw
    #:procurement-rawcontent
    #:procurement-notes
    #:procurement-deleted
    #:procurement-tombstonereason
    #:procurement-extensions
    #:procurement-description
    #:procurement-status
    #:procurement-contentvalidfrom
    #:procurement-contentvaliduntil
    #:procurement-procurementstage
    #:procurement-noticeid
    #:procurement-parentawardid
    #:procurement-partyroles
    #:procurement-fundingrecords
    #:procurement-lineitems
    #:procurement-competitionexceptions
    #:procurement-evaluationcriteria
    #:procurement-sourcesystemids
    #:procurement-contractid
    #:procurement-awardid
    #:procurement-solicitationid
    #:procurement-vehicleid
    #:procurement-buyerid
    #:procurement-sellerid
    #:procurement-agencyids
    #:procurement-vendorids
    #:procurement-subcontractorids
    #:procurement-scope
    #:procurement-awardtype
    #:procurement-competitiontype
    #:procurement-signedat
    #:procurement-startat
    #:procurement-endat
    #:procurement-ceilingamount
    #:procurement-potentialamount
    #:procurement-obligatedamount
    #:procurement-outlayamount
    #:procurement-recognizedrevenue
    #:procurement-currency
    #:procurement-naics
    #:procurement-psc
    #:procurement-placeofperformance
    #:procurement-modifications
    #:product
    #:MAKE-product
    #:COPY-product
    #:product-P
    #:+product-WIRE-FIELDS+
    #:product-id
    #:product-rev
    #:product-dataset
    #:product-dtype
    #:product-schemaversion
    #:product-externalids
    #:product-aliases
    #:product-sources
    #:product-sourceurls
    #:product-sourcerecordids
    #:product-sourcekinds
    #:product-sourcelicense
    #:product-sourceterms
    #:product-sourceretrievedat
    #:product-collectedat
    #:product-observedat
    #:product-firstseenat
    #:product-lastseenat
    #:product-createdat
    #:product-updatedat
    #:product-validfrom
    #:product-validuntil
    #:product-expiresat
    #:product-collector
    #:product-collectorversion
    #:product-collectionmethod
    #:product-collectionstatus
    #:product-runid
    #:product-correlationid
    #:product-causationid
    #:product-parentid
    #:product-rootid
    #:product-confidence
    #:product-confidencebasis
    #:product-qualityscore
    #:product-completenessscore
    #:product-verificationstatus
    #:product-verifiedat
    #:product-verifiedby
    #:product-provenance
    #:product-chainofcustody
    #:product-transformhistory
    #:product-labels
    #:product-tags
    #:product-topics
    #:product-language
    #:product-jurisdiction
    #:product-countrycode
    #:product-regioncode
    #:product-timezone
    #:product-sensitivity
    #:product-visibility
    #:product-owner
    #:product-accesscontrol
    #:product-legalbasis
    #:product-retentionpolicy
    #:product-contenttype
    #:product-encoding
    #:product-sizebytes
    #:product-contenthash
    #:product-hashalgorithm
    #:product-normalizedhash
    #:product-raw
    #:product-rawcontent
    #:product-notes
    #:product-deleted
    #:product-tombstonereason
    #:product-extensions
    #:product-description
    #:product-status
    #:product-contentvalidfrom
    #:product-contentvaliduntil
    #:product-supplierids
    #:product-versionids
    #:product-componentids
    #:product-dependencyids
    #:product-deploymentids
    #:product-sbomfileids
    #:product-supportendat
    #:product-pricingrecords
    #:product-securityadvisoryids
    #:product-etype
    #:product-eid
    #:product-name
    #:product-displayname
    #:product-legalname
    #:product-shortname
    #:product-formernames
    #:product-bio
    #:product-payloadjurisdiction
    #:product-country
    #:product-foundedat
    #:product-dissolvedat
    #:product-website
    #:product-imageurl
    #:product-logourl
    #:product-payloadexternalids
    #:product-contactids
    #:product-locationids
    #:product-manufacturerid
    #:product-vendorids
    #:product-producttype
    #:product-model
    #:product-versionname
    #:product-releasedate
    #:product-endoflife
    #:product-features
    #:product-capabilities
    #:product-integrations
    #:product-customers
    #:product-license
    #:product-pricing
    #:product-technical
    #:research-node
    #:MAKE-research-node
    #:COPY-research-node
    #:research-node-P
    #:+research-node-WIRE-FIELDS+
    #:research-node-id
    #:research-node-rev
    #:research-node-dataset
    #:research-node-dtype
    #:research-node-schemaversion
    #:research-node-externalids
    #:research-node-aliases
    #:research-node-sources
    #:research-node-sourceurls
    #:research-node-sourcerecordids
    #:research-node-sourcekinds
    #:research-node-sourcelicense
    #:research-node-sourceterms
    #:research-node-sourceretrievedat
    #:research-node-collectedat
    #:research-node-observedat
    #:research-node-firstseenat
    #:research-node-lastseenat
    #:research-node-createdat
    #:research-node-updatedat
    #:research-node-validfrom
    #:research-node-validuntil
    #:research-node-expiresat
    #:research-node-collector
    #:research-node-collectorversion
    #:research-node-collectionmethod
    #:research-node-collectionstatus
    #:research-node-runid
    #:research-node-correlationid
    #:research-node-causationid
    #:research-node-parentid
    #:research-node-rootid
    #:research-node-confidence
    #:research-node-confidencebasis
    #:research-node-qualityscore
    #:research-node-completenessscore
    #:research-node-verificationstatus
    #:research-node-verifiedat
    #:research-node-verifiedby
    #:research-node-provenance
    #:research-node-chainofcustody
    #:research-node-transformhistory
    #:research-node-labels
    #:research-node-tags
    #:research-node-topics
    #:research-node-language
    #:research-node-jurisdiction
    #:research-node-countrycode
    #:research-node-regioncode
    #:research-node-timezone
    #:research-node-sensitivity
    #:research-node-visibility
    #:research-node-owner
    #:research-node-accesscontrol
    #:research-node-legalbasis
    #:research-node-retentionpolicy
    #:research-node-contenttype
    #:research-node-encoding
    #:research-node-sizebytes
    #:research-node-contenthash
    #:research-node-hashalgorithm
    #:research-node-normalizedhash
    #:research-node-raw
    #:research-node-rawcontent
    #:research-node-notes
    #:research-node-deleted
    #:research-node-tombstonereason
    #:research-node-extensions
    #:research-node-description
    #:research-node-contentvalidfrom
    #:research-node-contentvaliduntil
    #:research-node-objective
    #:research-node-instructions
    #:research-node-inputids
    #:research-node-targetids
    #:research-node-actorids
    #:research-node-actorselectionrules
    #:research-node-outputids
    #:research-node-artifactids
    #:research-node-childids
    #:research-node-dependencyids
    #:research-node-runids
    #:research-node-currentactorid
    #:research-node-currentrunid
    #:research-node-history
    #:research-node-nodecreatedat
    #:research-node-startedat
    #:research-node-completedat
    #:research-node-lasterror
    #:research-node-pausedreason
    #:research-pass
    #:MAKE-research-pass
    #:COPY-research-pass
    #:research-pass-P
    #:+research-pass-WIRE-FIELDS+
    #:research-pass-id
    #:research-pass-rev
    #:research-pass-dataset
    #:research-pass-dtype
    #:research-pass-schemaversion
    #:research-pass-externalids
    #:research-pass-aliases
    #:research-pass-sources
    #:research-pass-sourceurls
    #:research-pass-sourcerecordids
    #:research-pass-sourcekinds
    #:research-pass-sourcelicense
    #:research-pass-sourceterms
    #:research-pass-sourceretrievedat
    #:research-pass-collectedat
    #:research-pass-observedat
    #:research-pass-firstseenat
    #:research-pass-lastseenat
    #:research-pass-createdat
    #:research-pass-updatedat
    #:research-pass-validfrom
    #:research-pass-validuntil
    #:research-pass-expiresat
    #:research-pass-collector
    #:research-pass-collectorversion
    #:research-pass-collectionmethod
    #:research-pass-collectionstatus
    #:research-pass-runid
    #:research-pass-correlationid
    #:research-pass-causationid
    #:research-pass-parentid
    #:research-pass-rootid
    #:research-pass-confidence
    #:research-pass-confidencebasis
    #:research-pass-qualityscore
    #:research-pass-completenessscore
    #:research-pass-verificationstatus
    #:research-pass-verifiedat
    #:research-pass-verifiedby
    #:research-pass-provenance
    #:research-pass-chainofcustody
    #:research-pass-transformhistory
    #:research-pass-labels
    #:research-pass-tags
    #:research-pass-topics
    #:research-pass-language
    #:research-pass-jurisdiction
    #:research-pass-countrycode
    #:research-pass-regioncode
    #:research-pass-timezone
    #:research-pass-sensitivity
    #:research-pass-visibility
    #:research-pass-owner
    #:research-pass-accesscontrol
    #:research-pass-legalbasis
    #:research-pass-retentionpolicy
    #:research-pass-contenttype
    #:research-pass-encoding
    #:research-pass-sizebytes
    #:research-pass-contenthash
    #:research-pass-hashalgorithm
    #:research-pass-normalizedhash
    #:research-pass-raw
    #:research-pass-rawcontent
    #:research-pass-notes
    #:research-pass-deleted
    #:research-pass-tombstonereason
    #:research-pass-extensions
    #:research-pass-description
    #:research-pass-status
    #:research-pass-contentvalidfrom
    #:research-pass-contentvaliduntil
    #:research-pass-parentpassid
    #:research-pass-childpassids
    #:research-pass-targetids
    #:research-pass-actionrecords
    #:research-pass-claimids
    #:research-pass-outputids
    #:research-pass-metrics
    #:research-pass-terminationreason
    #:research-pass-schemarevision
    #:research-pass-researchquestion
    #:research-pass-method
    #:research-pass-classificationrules
    #:research-pass-findingids
    #:research-pass-findings
    #:research-pass-supportingrecordids
    #:research-pass-counterevidenceids
    #:research-pass-unresolvedtargetids
    #:research-pass-sourceids
    #:research-pass-agentidentity
    #:research-pass-narrativerole
    #:research-pass-startedat
    #:research-pass-completedat
    #:research-pass-iteration
    #:social-media-post
    #:MAKE-social-media-post
    #:COPY-social-media-post
    #:social-media-post-P
    #:+social-media-post-WIRE-FIELDS+
    #:social-media-post-id
    #:social-media-post-rev
    #:social-media-post-dataset
    #:social-media-post-dtype
    #:social-media-post-schemaversion
    #:social-media-post-externalids
    #:social-media-post-aliases
    #:social-media-post-sources
    #:social-media-post-sourceurls
    #:social-media-post-sourcerecordids
    #:social-media-post-sourcekinds
    #:social-media-post-sourcelicense
    #:social-media-post-sourceterms
    #:social-media-post-sourceretrievedat
    #:social-media-post-collectedat
    #:social-media-post-observedat
    #:social-media-post-firstseenat
    #:social-media-post-lastseenat
    #:social-media-post-createdat
    #:social-media-post-updatedat
    #:social-media-post-validfrom
    #:social-media-post-validuntil
    #:social-media-post-expiresat
    #:social-media-post-collector
    #:social-media-post-collectorversion
    #:social-media-post-collectionmethod
    #:social-media-post-collectionstatus
    #:social-media-post-runid
    #:social-media-post-correlationid
    #:social-media-post-causationid
    #:social-media-post-parentid
    #:social-media-post-rootid
    #:social-media-post-confidence
    #:social-media-post-confidencebasis
    #:social-media-post-qualityscore
    #:social-media-post-completenessscore
    #:social-media-post-verificationstatus
    #:social-media-post-verifiedat
    #:social-media-post-verifiedby
    #:social-media-post-provenance
    #:social-media-post-chainofcustody
    #:social-media-post-transformhistory
    #:social-media-post-labels
    #:social-media-post-tags
    #:social-media-post-topics
    #:social-media-post-language
    #:social-media-post-jurisdiction
    #:social-media-post-countrycode
    #:social-media-post-regioncode
    #:social-media-post-timezone
    #:social-media-post-sensitivity
    #:social-media-post-visibility
    #:social-media-post-owner
    #:social-media-post-accesscontrol
    #:social-media-post-legalbasis
    #:social-media-post-retentionpolicy
    #:social-media-post-contenttype
    #:social-media-post-encoding
    #:social-media-post-sizebytes
    #:social-media-post-contenthash
    #:social-media-post-hashalgorithm
    #:social-media-post-normalizedhash
    #:social-media-post-raw
    #:social-media-post-rawcontent
    #:social-media-post-notes
    #:social-media-post-deleted
    #:social-media-post-tombstonereason
    #:social-media-post-extensions
    #:social-media-post-description
    #:social-media-post-status
    #:social-media-post-contentvalidfrom
    #:social-media-post-contentvaliduntil
    #:social-media-post-authorrefs
    #:social-media-post-conversationid
    #:social-media-post-parentpostid
    #:social-media-post-attachmentids
    #:social-media-post-captureids
    #:social-media-post-engagementobservationids
    #:social-media-post-payloadcontenthash
    #:social-media-post-content
    #:social-media-post-platform
    #:social-media-post-user
    #:social-media-post-userid
    #:social-media-post-isreply
    #:social-media-post-media
    #:social-media-post-messageid
    #:social-media-post-replyto
    #:social-media-post-group
    #:social-media-post-channel
    #:social-media-post-threadid
    #:social-media-post-mentions
    #:social-media-post-reactions
    #:social-media-post-links
    #:social-media-post-postedat
    #:social-media-post-editedat
    #:social-media-post-payloaddeleted
    #:social-media-post-payloadvisibility
    #:social-media-post-replies
    #:social-media-post-replycount
    #:social-media-post-repostcount
    #:social-media-post-likecount
    #:social-media-post-viewcount
    #:social-media-post-url
    #:social-media-post-payloadtags
    #:social-media-post-title
    #:social-media-post-quotepostid
    #:source
    #:MAKE-source
    #:COPY-source
    #:source-P
    #:+source-WIRE-FIELDS+
    #:source-id
    #:source-rev
    #:source-dataset
    #:source-dtype
    #:source-schemaversion
    #:source-externalids
    #:source-aliases
    #:source-sources
    #:source-sourceurls
    #:source-sourcerecordids
    #:source-sourcekinds
    #:source-sourcelicense
    #:source-sourceterms
    #:source-sourceretrievedat
    #:source-collectedat
    #:source-observedat
    #:source-firstseenat
    #:source-lastseenat
    #:source-createdat
    #:source-updatedat
    #:source-validfrom
    #:source-validuntil
    #:source-expiresat
    #:source-collector
    #:source-collectorversion
    #:source-collectionmethod
    #:source-collectionstatus
    #:source-runid
    #:source-correlationid
    #:source-causationid
    #:source-parentid
    #:source-rootid
    #:source-confidence
    #:source-confidencebasis
    #:source-qualityscore
    #:source-completenessscore
    #:source-verificationstatus
    #:source-verifiedat
    #:source-verifiedby
    #:source-provenance
    #:source-chainofcustody
    #:source-transformhistory
    #:source-labels
    #:source-tags
    #:source-topics
    #:source-language
    #:source-jurisdiction
    #:source-countrycode
    #:source-regioncode
    #:source-timezone
    #:source-sensitivity
    #:source-visibility
    #:source-owner
    #:source-accesscontrol
    #:source-legalbasis
    #:source-retentionpolicy
    #:source-contenttype
    #:source-encoding
    #:source-sizebytes
    #:source-contenthash
    #:source-hashalgorithm
    #:source-normalizedhash
    #:source-raw
    #:source-rawcontent
    #:source-notes
    #:source-deleted
    #:source-tombstonereason
    #:source-extensions
    #:source-description
    #:source-status
    #:source-contentvalidfrom
    #:source-contentvaliduntil
    #:source-sourcetypeid
    #:source-publisherid
    #:source-authorids
    #:source-captureactionid
    #:source-originalfileids
    #:source-archiveids
    #:source-termsofuse
    #:source-accessrestrictions
    #:source-supersedessourceids
    #:source-sourceid
    #:source-type
    #:source-sensor
    #:source-name
    #:source-title
    #:source-publisher
    #:source-author
    #:source-organization
    #:source-uri
    #:source-url
    #:source-archiveurl
    #:source-publishedat
    #:source-retrievedat
    #:source-accessedat
    #:source-payloadlanguage
    #:source-payloadjurisdiction
    #:source-medium
    #:source-accessmethod
    #:source-query
    #:source-requestid
    #:source-responsestatus
    #:source-payloadcontenthash
    #:source-payloadhashalgorithm
    #:source-license
    #:source-quote
    #:source-locator
    #:source-page
    #:source-section
    #:source-payloadnotes
    #:source-metadata
    #:task
    #:MAKE-task
    #:COPY-task
    #:task-P
    #:+task-WIRE-FIELDS+
    #:task-id
    #:task-rev
    #:task-dataset
    #:task-dtype
    #:task-schemaversion
    #:task-externalids
    #:task-aliases
    #:task-sources
    #:task-sourceurls
    #:task-sourcerecordids
    #:task-sourcekinds
    #:task-sourcelicense
    #:task-sourceterms
    #:task-sourceretrievedat
    #:task-collectedat
    #:task-observedat
    #:task-firstseenat
    #:task-lastseenat
    #:task-createdat
    #:task-updatedat
    #:task-validfrom
    #:task-validuntil
    #:task-expiresat
    #:task-collector
    #:task-collectorversion
    #:task-collectionmethod
    #:task-collectionstatus
    #:task-runid
    #:task-correlationid
    #:task-causationid
    #:task-parentid
    #:task-rootid
    #:task-confidence
    #:task-confidencebasis
    #:task-qualityscore
    #:task-completenessscore
    #:task-verificationstatus
    #:task-verifiedat
    #:task-verifiedby
    #:task-provenance
    #:task-chainofcustody
    #:task-transformhistory
    #:task-labels
    #:task-tags
    #:task-topics
    #:task-language
    #:task-jurisdiction
    #:task-countrycode
    #:task-regioncode
    #:task-timezone
    #:task-sensitivity
    #:task-visibility
    #:task-owner
    #:task-accesscontrol
    #:task-legalbasis
    #:task-retentionpolicy
    #:task-contenttype
    #:task-encoding
    #:task-sizebytes
    #:task-contenthash
    #:task-hashalgorithm
    #:task-normalizedhash
    #:task-raw
    #:task-rawcontent
    #:task-notes
    #:task-deleted
    #:task-tombstonereason
    #:task-extensions
    #:task-description
    #:task-status
    #:task-contentvalidfrom
    #:task-contentvaliduntil
    #:task-parenttaskid
    #:task-dependencytaskids
    #:task-actorids
    #:task-skillids
    #:task-toolids
    #:task-inputids
    #:task-attemptids
    #:task-schedule
    #:task-startedat
    #:task-resultsummary
    #:task-errorids
    #:task-tasktype
    #:task-subjectids
    #:task-assigneeids
    #:task-priority
    #:task-dueat
    #:task-completedat
    #:task-instructions
    #:task-resultids
    #:target
    #:MAKE-target
    #:COPY-target
    #:target-P
    #:+target-WIRE-FIELDS+
    #:target-id
    #:target-rev
    #:target-dataset
    #:target-dtype
    #:target-schemaversion
    #:target-externalids
    #:target-aliases
    #:target-sources
    #:target-sourceurls
    #:target-sourcerecordids
    #:target-sourcekinds
    #:target-sourcelicense
    #:target-sourceterms
    #:target-sourceretrievedat
    #:target-collectedat
    #:target-observedat
    #:target-firstseenat
    #:target-lastseenat
    #:target-createdat
    #:target-updatedat
    #:target-validfrom
    #:target-validuntil
    #:target-expiresat
    #:target-collector
    #:target-collectorversion
    #:target-collectionmethod
    #:target-collectionstatus
    #:target-runid
    #:target-correlationid
    #:target-causationid
    #:target-parentid
    #:target-rootid
    #:target-confidence
    #:target-confidencebasis
    #:target-qualityscore
    #:target-completenessscore
    #:target-verificationstatus
    #:target-verifiedat
    #:target-verifiedby
    #:target-provenance
    #:target-chainofcustody
    #:target-transformhistory
    #:target-labels
    #:target-tags
    #:target-topics
    #:target-language
    #:target-jurisdiction
    #:target-countrycode
    #:target-regioncode
    #:target-timezone
    #:target-sensitivity
    #:target-visibility
    #:target-owner
    #:target-accesscontrol
    #:target-legalbasis
    #:target-retentionpolicy
    #:target-contenttype
    #:target-encoding
    #:target-sizebytes
    #:target-contenthash
    #:target-hashalgorithm
    #:target-normalizedhash
    #:target-raw
    #:target-rawcontent
    #:target-notes
    #:target-deleted
    #:target-tombstonereason
    #:target-extensions
    #:target-actor
    #:target-target
    #:target-targettype
    #:target-scope
    #:target-delay
    #:target-recurring
    #:target-schedule
    #:target-options
    #:target-priority
    #:target-notbefore
    #:target-deadline
    #:target-lastrunat
    #:target-nextrunat
    #:target-attempts
    #:target-maximumattempts
    #:target-lasterror
    #:actor-manifest
    #:MAKE-actor-manifest
    #:COPY-actor-manifest
    #:actor-manifest-P
    #:+actor-manifest-WIRE-FIELDS+
    #:actor-manifest-id
    #:actor-manifest-rev
    #:actor-manifest-dataset
    #:actor-manifest-dtype
    #:actor-manifest-schemaversion
    #:actor-manifest-externalids
    #:actor-manifest-aliases
    #:actor-manifest-sources
    #:actor-manifest-sourceurls
    #:actor-manifest-sourcerecordids
    #:actor-manifest-sourcekinds
    #:actor-manifest-sourcelicense
    #:actor-manifest-sourceterms
    #:actor-manifest-sourceretrievedat
    #:actor-manifest-collectedat
    #:actor-manifest-observedat
    #:actor-manifest-firstseenat
    #:actor-manifest-lastseenat
    #:actor-manifest-createdat
    #:actor-manifest-updatedat
    #:actor-manifest-validfrom
    #:actor-manifest-validuntil
    #:actor-manifest-expiresat
    #:actor-manifest-collector
    #:actor-manifest-collectorversion
    #:actor-manifest-collectionmethod
    #:actor-manifest-collectionstatus
    #:actor-manifest-runid
    #:actor-manifest-correlationid
    #:actor-manifest-causationid
    #:actor-manifest-parentid
    #:actor-manifest-rootid
    #:actor-manifest-confidence
    #:actor-manifest-confidencebasis
    #:actor-manifest-qualityscore
    #:actor-manifest-completenessscore
    #:actor-manifest-verificationstatus
    #:actor-manifest-verifiedat
    #:actor-manifest-verifiedby
    #:actor-manifest-provenance
    #:actor-manifest-chainofcustody
    #:actor-manifest-transformhistory
    #:actor-manifest-labels
    #:actor-manifest-tags
    #:actor-manifest-topics
    #:actor-manifest-language
    #:actor-manifest-jurisdiction
    #:actor-manifest-countrycode
    #:actor-manifest-regioncode
    #:actor-manifest-timezone
    #:actor-manifest-sensitivity
    #:actor-manifest-visibility
    #:actor-manifest-owner
    #:actor-manifest-accesscontrol
    #:actor-manifest-legalbasis
    #:actor-manifest-retentionpolicy
    #:actor-manifest-contenttype
    #:actor-manifest-encoding
    #:actor-manifest-sizebytes
    #:actor-manifest-contenthash
    #:actor-manifest-hashalgorithm
    #:actor-manifest-normalizedhash
    #:actor-manifest-raw
    #:actor-manifest-rawcontent
    #:actor-manifest-notes
    #:actor-manifest-deleted
    #:actor-manifest-tombstonereason
    #:actor-manifest-extensions
    #:actor-manifest-actor
    #:actor-manifest-actorversion
    #:actor-manifest-consumerpaths
    #:actor-manifest-targetoptions
    #:actor-manifest-accepts
    #:actor-manifest-produces
    #:actor-manifest-capabilities
    #:actor-manifest-runtime
    #:actor-manifest-endpoint
    #:actor-manifest-mailbox
    #:actor-manifest-restartpolicy
    #:actor-manifest-healthendpoint
    #:actor-manifest-heartbeatseconds
    #:actor-manifest-metadata
    #:artifact
    #:MAKE-artifact
    #:COPY-artifact
    #:artifact-P
    #:+artifact-WIRE-FIELDS+
    #:artifact-id
    #:artifact-rev
    #:artifact-dataset
    #:artifact-dtype
    #:artifact-schemaversion
    #:artifact-externalids
    #:artifact-aliases
    #:artifact-sources
    #:artifact-sourceurls
    #:artifact-sourcerecordids
    #:artifact-sourcekinds
    #:artifact-sourcelicense
    #:artifact-sourceterms
    #:artifact-sourceretrievedat
    #:artifact-collectedat
    #:artifact-observedat
    #:artifact-firstseenat
    #:artifact-lastseenat
    #:artifact-createdat
    #:artifact-updatedat
    #:artifact-validfrom
    #:artifact-validuntil
    #:artifact-expiresat
    #:artifact-collector
    #:artifact-collectorversion
    #:artifact-collectionmethod
    #:artifact-collectionstatus
    #:artifact-runid
    #:artifact-correlationid
    #:artifact-causationid
    #:artifact-parentid
    #:artifact-rootid
    #:artifact-confidence
    #:artifact-confidencebasis
    #:artifact-qualityscore
    #:artifact-completenessscore
    #:artifact-verificationstatus
    #:artifact-verifiedat
    #:artifact-verifiedby
    #:artifact-provenance
    #:artifact-chainofcustody
    #:artifact-transformhistory
    #:artifact-labels
    #:artifact-tags
    #:artifact-topics
    #:artifact-language
    #:artifact-jurisdiction
    #:artifact-countrycode
    #:artifact-regioncode
    #:artifact-timezone
    #:artifact-sensitivity
    #:artifact-visibility
    #:artifact-owner
    #:artifact-accesscontrol
    #:artifact-legalbasis
    #:artifact-retentionpolicy
    #:artifact-contenttype
    #:artifact-encoding
    #:artifact-sizebytes
    #:artifact-contenthash
    #:artifact-hashalgorithm
    #:artifact-normalizedhash
    #:artifact-raw
    #:artifact-rawcontent
    #:artifact-notes
    #:artifact-deleted
    #:artifact-tombstonereason
    #:artifact-extensions
    #:artifact-name
    #:artifact-filename
    #:artifact-mediatype
    #:artifact-uri
    #:artifact-storageuri
    #:artifact-byteshash
    #:artifact-size
    #:artifact-extractedtext
    #:artifact-ocrtext
    #:artifact-metadata
    #:artifact-attachments
    #:finding
    #:MAKE-finding
    #:COPY-finding
    #:finding-P
    #:+finding-WIRE-FIELDS+
    #:finding-id
    #:finding-rev
    #:finding-dataset
    #:finding-dtype
    #:finding-schemaversion
    #:finding-externalids
    #:finding-aliases
    #:finding-sources
    #:finding-sourceurls
    #:finding-sourcerecordids
    #:finding-sourcekinds
    #:finding-sourcelicense
    #:finding-sourceterms
    #:finding-sourceretrievedat
    #:finding-collectedat
    #:finding-observedat
    #:finding-firstseenat
    #:finding-lastseenat
    #:finding-createdat
    #:finding-updatedat
    #:finding-validfrom
    #:finding-validuntil
    #:finding-expiresat
    #:finding-collector
    #:finding-collectorversion
    #:finding-collectionmethod
    #:finding-collectionstatus
    #:finding-runid
    #:finding-correlationid
    #:finding-causationid
    #:finding-parentid
    #:finding-rootid
    #:finding-confidence
    #:finding-confidencebasis
    #:finding-qualityscore
    #:finding-completenessscore
    #:finding-verificationstatus
    #:finding-verifiedat
    #:finding-verifiedby
    #:finding-provenance
    #:finding-chainofcustody
    #:finding-transformhistory
    #:finding-labels
    #:finding-tags
    #:finding-topics
    #:finding-language
    #:finding-jurisdiction
    #:finding-countrycode
    #:finding-regioncode
    #:finding-timezone
    #:finding-sensitivity
    #:finding-visibility
    #:finding-owner
    #:finding-accesscontrol
    #:finding-legalbasis
    #:finding-retentionpolicy
    #:finding-contenttype
    #:finding-encoding
    #:finding-sizebytes
    #:finding-contenthash
    #:finding-hashalgorithm
    #:finding-normalizedhash
    #:finding-raw
    #:finding-rawcontent
    #:finding-notes
    #:finding-deleted
    #:finding-tombstonereason
    #:finding-extensions
    #:finding-title
    #:finding-description
    #:finding-findingtype
    #:finding-severity
    #:finding-status
    #:finding-asset
    #:finding-evidence
    #:finding-recommendation
    #:finding-discoveredat
    #:finding-resolvedat
    #:finding-cve
    #:finding-cwe
    #:finding-cvss
    #:scope
    #:MAKE-scope
    #:COPY-scope
    #:scope-P
    #:+scope-WIRE-FIELDS+
    #:scope-id
    #:scope-rev
    #:scope-dataset
    #:scope-dtype
    #:scope-schemaversion
    #:scope-externalids
    #:scope-aliases
    #:scope-sources
    #:scope-sourceurls
    #:scope-sourcerecordids
    #:scope-sourcekinds
    #:scope-sourcelicense
    #:scope-sourceterms
    #:scope-sourceretrievedat
    #:scope-collectedat
    #:scope-observedat
    #:scope-firstseenat
    #:scope-lastseenat
    #:scope-createdat
    #:scope-updatedat
    #:scope-validfrom
    #:scope-validuntil
    #:scope-expiresat
    #:scope-collector
    #:scope-collectorversion
    #:scope-collectionmethod
    #:scope-collectionstatus
    #:scope-runid
    #:scope-correlationid
    #:scope-causationid
    #:scope-parentid
    #:scope-rootid
    #:scope-confidence
    #:scope-confidencebasis
    #:scope-qualityscore
    #:scope-completenessscore
    #:scope-verificationstatus
    #:scope-verifiedat
    #:scope-verifiedby
    #:scope-provenance
    #:scope-chainofcustody
    #:scope-transformhistory
    #:scope-labels
    #:scope-tags
    #:scope-topics
    #:scope-language
    #:scope-jurisdiction
    #:scope-countrycode
    #:scope-regioncode
    #:scope-timezone
    #:scope-sensitivity
    #:scope-visibility
    #:scope-owner
    #:scope-accesscontrol
    #:scope-legalbasis
    #:scope-retentionpolicy
    #:scope-contenttype
    #:scope-encoding
    #:scope-sizebytes
    #:scope-contenthash
    #:scope-hashalgorithm
    #:scope-normalizedhash
    #:scope-raw
    #:scope-rawcontent
    #:scope-notes
    #:scope-deleted
    #:scope-tombstonereason
    #:scope-extensions
    #:scope-name
    #:scope-program
    #:scope-inscope
    #:scope-outofscope
    #:scope-rules
    #:scope-startsat
    #:scope-endsat
    #:scope-ratelimits
    #:scope-allowedtools
    #:scope-prohibitedactions
    #:file
    #:MAKE-file
    #:COPY-file
    #:file-P
    #:+file-WIRE-FIELDS+
    #:file-id
    #:file-rev
    #:file-dataset
    #:file-dtype
    #:file-schemaversion
    #:file-externalids
    #:file-aliases
    #:file-sources
    #:file-sourceurls
    #:file-sourcerecordids
    #:file-sourcekinds
    #:file-sourcelicense
    #:file-sourceterms
    #:file-sourceretrievedat
    #:file-collectedat
    #:file-observedat
    #:file-firstseenat
    #:file-lastseenat
    #:file-createdat
    #:file-updatedat
    #:file-validfrom
    #:file-validuntil
    #:file-expiresat
    #:file-collector
    #:file-collectorversion
    #:file-collectionmethod
    #:file-collectionstatus
    #:file-runid
    #:file-correlationid
    #:file-causationid
    #:file-parentid
    #:file-rootid
    #:file-confidence
    #:file-confidencebasis
    #:file-qualityscore
    #:file-completenessscore
    #:file-verificationstatus
    #:file-verifiedat
    #:file-verifiedby
    #:file-provenance
    #:file-chainofcustody
    #:file-transformhistory
    #:file-labels
    #:file-tags
    #:file-topics
    #:file-language
    #:file-jurisdiction
    #:file-countrycode
    #:file-regioncode
    #:file-timezone
    #:file-sensitivity
    #:file-visibility
    #:file-owner
    #:file-accesscontrol
    #:file-legalbasis
    #:file-retentionpolicy
    #:file-contenttype
    #:file-encoding
    #:file-sizebytes
    #:file-contenthash
    #:file-hashalgorithm
    #:file-normalizedhash
    #:file-raw
    #:file-rawcontent
    #:file-notes
    #:file-deleted
    #:file-tombstonereason
    #:file-extensions
    #:file-name
    #:file-filename
    #:file-originalname
    #:file-uri
    #:file-storageuri
    #:file-path
    #:file-filekind
    #:file-mediatype
    #:file-declaredmediatype
    #:file-sniffedmediatype
    #:file-magictype
    #:file-detectedformat
    #:file-extension
    #:file-storageid
    #:file-byteshash
    #:file-byteshashalgorithm
    #:file-hashes
    #:file-trustfilenameextension
    #:file-compression
    #:file-encrypted
    #:file-passwordprotected
    #:file-archive
    #:file-archiveentries
    #:file-quarantined
    #:file-executable
    #:file-parsestatus
    #:file-parser
    #:file-parserversion
    #:file-parseerror
    #:file-containerfile
    #:file-parentfile
    #:file-derivedfiles
    #:file-captureaction
    #:file-extractedmetadata
    #:media
    #:MAKE-media
    #:COPY-media
    #:media-P
    #:+media-WIRE-FIELDS+
    #:media-id
    #:media-rev
    #:media-dataset
    #:media-dtype
    #:media-schemaversion
    #:media-externalids
    #:media-aliases
    #:media-sources
    #:media-sourceurls
    #:media-sourcerecordids
    #:media-sourcekinds
    #:media-sourcelicense
    #:media-sourceterms
    #:media-sourceretrievedat
    #:media-collectedat
    #:media-observedat
    #:media-firstseenat
    #:media-lastseenat
    #:media-createdat
    #:media-updatedat
    #:media-validfrom
    #:media-validuntil
    #:media-expiresat
    #:media-collector
    #:media-collectorversion
    #:media-collectionmethod
    #:media-collectionstatus
    #:media-runid
    #:media-correlationid
    #:media-causationid
    #:media-parentid
    #:media-rootid
    #:media-confidence
    #:media-confidencebasis
    #:media-qualityscore
    #:media-completenessscore
    #:media-verificationstatus
    #:media-verifiedat
    #:media-verifiedby
    #:media-provenance
    #:media-chainofcustody
    #:media-transformhistory
    #:media-labels
    #:media-tags
    #:media-topics
    #:media-language
    #:media-jurisdiction
    #:media-countrycode
    #:media-regioncode
    #:media-timezone
    #:media-sensitivity
    #:media-visibility
    #:media-owner
    #:media-accesscontrol
    #:media-legalbasis
    #:media-retentionpolicy
    #:media-contenttype
    #:media-encoding
    #:media-sizebytes
    #:media-contenthash
    #:media-hashalgorithm
    #:media-normalizedhash
    #:media-raw
    #:media-rawcontent
    #:media-notes
    #:media-deleted
    #:media-tombstonereason
    #:media-extensions
    #:media-sourcefile
    #:media-mediatype
    #:media-codec
    #:media-container
    #:media-durationseconds
    #:media-width
    #:media-height
    #:media-title
    #:media-creatorrefs
    #:media-publisher
    #:media-transcript
    #:media-transcriptfile
    #:media-ocrtext
    #:media-derivativefiles
    #:media-captureaction
    #:image
    #:MAKE-image
    #:COPY-image
    #:image-P
    #:+image-WIRE-FIELDS+
    #:image-id
    #:image-rev
    #:image-dataset
    #:image-dtype
    #:image-schemaversion
    #:image-externalids
    #:image-aliases
    #:image-sources
    #:image-sourceurls
    #:image-sourcerecordids
    #:image-sourcekinds
    #:image-sourcelicense
    #:image-sourceterms
    #:image-sourceretrievedat
    #:image-collectedat
    #:image-observedat
    #:image-firstseenat
    #:image-lastseenat
    #:image-createdat
    #:image-updatedat
    #:image-validfrom
    #:image-validuntil
    #:image-expiresat
    #:image-collector
    #:image-collectorversion
    #:image-collectionmethod
    #:image-collectionstatus
    #:image-runid
    #:image-correlationid
    #:image-causationid
    #:image-parentid
    #:image-rootid
    #:image-confidence
    #:image-confidencebasis
    #:image-qualityscore
    #:image-completenessscore
    #:image-verificationstatus
    #:image-verifiedat
    #:image-verifiedby
    #:image-provenance
    #:image-chainofcustody
    #:image-transformhistory
    #:image-labels
    #:image-tags
    #:image-topics
    #:image-language
    #:image-jurisdiction
    #:image-countrycode
    #:image-regioncode
    #:image-timezone
    #:image-sensitivity
    #:image-visibility
    #:image-owner
    #:image-accesscontrol
    #:image-legalbasis
    #:image-retentionpolicy
    #:image-contenttype
    #:image-encoding
    #:image-sizebytes
    #:image-contenthash
    #:image-hashalgorithm
    #:image-normalizedhash
    #:image-raw
    #:image-rawcontent
    #:image-notes
    #:image-deleted
    #:image-tombstonereason
    #:image-extensions
    #:image-name
    #:image-filename
    #:image-originalname
    #:image-uri
    #:image-storageuri
    #:image-path
    #:image-filekind
    #:image-mediatype
    #:image-declaredmediatype
    #:image-sniffedmediatype
    #:image-magictype
    #:image-detectedformat
    #:image-extension
    #:image-storageid
    #:image-byteshash
    #:image-byteshashalgorithm
    #:image-hashes
    #:image-trustfilenameextension
    #:image-compression
    #:image-encrypted
    #:image-passwordprotected
    #:image-archive
    #:image-archiveentries
    #:image-quarantined
    #:image-executable
    #:image-parsestatus
    #:image-parser
    #:image-parserversion
    #:image-parseerror
    #:image-containerfile
    #:image-parentfile
    #:image-derivedfiles
    #:image-captureaction
    #:image-extractedmetadata
    #:image-width
    #:image-height
    #:image-orientation
    #:image-capturedat
    #:image-capturedevice
    #:image-location
    #:image-exif
    #:image-ocrtext
    #:image-thumbnailfiles
    #:image-derivedimages
    #:picture
    #:MAKE-picture
    #:COPY-picture
    #:picture-P
    #:+picture-WIRE-FIELDS+
    #:picture-id
    #:picture-rev
    #:picture-dataset
    #:picture-dtype
    #:picture-schemaversion
    #:picture-externalids
    #:picture-aliases
    #:picture-sources
    #:picture-sourceurls
    #:picture-sourcerecordids
    #:picture-sourcekinds
    #:picture-sourcelicense
    #:picture-sourceterms
    #:picture-sourceretrievedat
    #:picture-collectedat
    #:picture-observedat
    #:picture-firstseenat
    #:picture-lastseenat
    #:picture-createdat
    #:picture-updatedat
    #:picture-validfrom
    #:picture-validuntil
    #:picture-expiresat
    #:picture-collector
    #:picture-collectorversion
    #:picture-collectionmethod
    #:picture-collectionstatus
    #:picture-runid
    #:picture-correlationid
    #:picture-causationid
    #:picture-parentid
    #:picture-rootid
    #:picture-confidence
    #:picture-confidencebasis
    #:picture-qualityscore
    #:picture-completenessscore
    #:picture-verificationstatus
    #:picture-verifiedat
    #:picture-verifiedby
    #:picture-provenance
    #:picture-chainofcustody
    #:picture-transformhistory
    #:picture-labels
    #:picture-tags
    #:picture-topics
    #:picture-language
    #:picture-jurisdiction
    #:picture-countrycode
    #:picture-regioncode
    #:picture-timezone
    #:picture-sensitivity
    #:picture-visibility
    #:picture-owner
    #:picture-accesscontrol
    #:picture-legalbasis
    #:picture-retentionpolicy
    #:picture-contenttype
    #:picture-encoding
    #:picture-sizebytes
    #:picture-contenthash
    #:picture-hashalgorithm
    #:picture-normalizedhash
    #:picture-raw
    #:picture-rawcontent
    #:picture-notes
    #:picture-deleted
    #:picture-tombstonereason
    #:picture-extensions
    #:picture-name
    #:picture-filename
    #:picture-originalname
    #:picture-uri
    #:picture-storageuri
    #:picture-path
    #:picture-filekind
    #:picture-mediatype
    #:picture-declaredmediatype
    #:picture-sniffedmediatype
    #:picture-magictype
    #:picture-detectedformat
    #:picture-extension
    #:picture-storageid
    #:picture-byteshash
    #:picture-byteshashalgorithm
    #:picture-hashes
    #:picture-trustfilenameextension
    #:picture-compression
    #:picture-encrypted
    #:picture-passwordprotected
    #:picture-archive
    #:picture-archiveentries
    #:picture-quarantined
    #:picture-executable
    #:picture-parsestatus
    #:picture-parser
    #:picture-parserversion
    #:picture-parseerror
    #:picture-containerfile
    #:picture-parentfile
    #:picture-derivedfiles
    #:picture-captureaction
    #:picture-extractedmetadata
    #:picture-width
    #:picture-height
    #:picture-orientation
    #:picture-capturedat
    #:picture-capturedevice
    #:picture-location
    #:picture-exif
    #:picture-ocrtext
    #:picture-thumbnailfiles
    #:picture-derivedimages
    #:picture-picturekind
    #:video
    #:MAKE-video
    #:COPY-video
    #:video-P
    #:+video-WIRE-FIELDS+
    #:video-id
    #:video-rev
    #:video-dataset
    #:video-dtype
    #:video-schemaversion
    #:video-externalids
    #:video-aliases
    #:video-sources
    #:video-sourceurls
    #:video-sourcerecordids
    #:video-sourcekinds
    #:video-sourcelicense
    #:video-sourceterms
    #:video-sourceretrievedat
    #:video-collectedat
    #:video-observedat
    #:video-firstseenat
    #:video-lastseenat
    #:video-createdat
    #:video-updatedat
    #:video-validfrom
    #:video-validuntil
    #:video-expiresat
    #:video-collector
    #:video-collectorversion
    #:video-collectionmethod
    #:video-collectionstatus
    #:video-runid
    #:video-correlationid
    #:video-causationid
    #:video-parentid
    #:video-rootid
    #:video-confidence
    #:video-confidencebasis
    #:video-qualityscore
    #:video-completenessscore
    #:video-verificationstatus
    #:video-verifiedat
    #:video-verifiedby
    #:video-provenance
    #:video-chainofcustody
    #:video-transformhistory
    #:video-labels
    #:video-tags
    #:video-topics
    #:video-language
    #:video-jurisdiction
    #:video-countrycode
    #:video-regioncode
    #:video-timezone
    #:video-sensitivity
    #:video-visibility
    #:video-owner
    #:video-accesscontrol
    #:video-legalbasis
    #:video-retentionpolicy
    #:video-contenttype
    #:video-encoding
    #:video-sizebytes
    #:video-contenthash
    #:video-hashalgorithm
    #:video-normalizedhash
    #:video-raw
    #:video-rawcontent
    #:video-notes
    #:video-deleted
    #:video-tombstonereason
    #:video-extensions
    #:video-name
    #:video-filename
    #:video-originalname
    #:video-uri
    #:video-storageuri
    #:video-path
    #:video-filekind
    #:video-mediatype
    #:video-declaredmediatype
    #:video-sniffedmediatype
    #:video-magictype
    #:video-detectedformat
    #:video-extension
    #:video-storageid
    #:video-byteshash
    #:video-byteshashalgorithm
    #:video-hashes
    #:video-trustfilenameextension
    #:video-compression
    #:video-encrypted
    #:video-passwordprotected
    #:video-archive
    #:video-archiveentries
    #:video-quarantined
    #:video-executable
    #:video-parsestatus
    #:video-parser
    #:video-parserversion
    #:video-parseerror
    #:video-containerfile
    #:video-parentfile
    #:video-derivedfiles
    #:video-captureaction
    #:video-extractedmetadata
    #:video-container
    #:video-codec
    #:video-width
    #:video-height
    #:video-durationseconds
    #:video-framerate
    #:video-framecount
    #:video-bitrate
    #:video-capturedat
    #:video-capturedevice
    #:video-location
    #:video-audiotracks
    #:video-frames
    #:video-transcript
    #:video-ocrobservations
    #:video-frame
    #:MAKE-video-frame
    #:COPY-video-frame
    #:video-frame-P
    #:+video-frame-WIRE-FIELDS+
    #:video-frame-id
    #:video-frame-rev
    #:video-frame-dataset
    #:video-frame-dtype
    #:video-frame-schemaversion
    #:video-frame-externalids
    #:video-frame-aliases
    #:video-frame-sources
    #:video-frame-sourceurls
    #:video-frame-sourcerecordids
    #:video-frame-sourcekinds
    #:video-frame-sourcelicense
    #:video-frame-sourceterms
    #:video-frame-sourceretrievedat
    #:video-frame-collectedat
    #:video-frame-observedat
    #:video-frame-firstseenat
    #:video-frame-lastseenat
    #:video-frame-createdat
    #:video-frame-updatedat
    #:video-frame-validfrom
    #:video-frame-validuntil
    #:video-frame-expiresat
    #:video-frame-collector
    #:video-frame-collectorversion
    #:video-frame-collectionmethod
    #:video-frame-collectionstatus
    #:video-frame-runid
    #:video-frame-correlationid
    #:video-frame-causationid
    #:video-frame-parentid
    #:video-frame-rootid
    #:video-frame-confidence
    #:video-frame-confidencebasis
    #:video-frame-qualityscore
    #:video-frame-completenessscore
    #:video-frame-verificationstatus
    #:video-frame-verifiedat
    #:video-frame-verifiedby
    #:video-frame-provenance
    #:video-frame-chainofcustody
    #:video-frame-transformhistory
    #:video-frame-labels
    #:video-frame-tags
    #:video-frame-topics
    #:video-frame-language
    #:video-frame-jurisdiction
    #:video-frame-countrycode
    #:video-frame-regioncode
    #:video-frame-timezone
    #:video-frame-sensitivity
    #:video-frame-visibility
    #:video-frame-owner
    #:video-frame-accesscontrol
    #:video-frame-legalbasis
    #:video-frame-retentionpolicy
    #:video-frame-contenttype
    #:video-frame-encoding
    #:video-frame-sizebytes
    #:video-frame-contenthash
    #:video-frame-hashalgorithm
    #:video-frame-normalizedhash
    #:video-frame-raw
    #:video-frame-rawcontent
    #:video-frame-notes
    #:video-frame-deleted
    #:video-frame-tombstonereason
    #:video-frame-extensions
    #:video-frame-name
    #:video-frame-filename
    #:video-frame-originalname
    #:video-frame-uri
    #:video-frame-storageuri
    #:video-frame-path
    #:video-frame-filekind
    #:video-frame-mediatype
    #:video-frame-declaredmediatype
    #:video-frame-sniffedmediatype
    #:video-frame-magictype
    #:video-frame-detectedformat
    #:video-frame-extension
    #:video-frame-storageid
    #:video-frame-byteshash
    #:video-frame-byteshashalgorithm
    #:video-frame-hashes
    #:video-frame-trustfilenameextension
    #:video-frame-compression
    #:video-frame-encrypted
    #:video-frame-passwordprotected
    #:video-frame-archive
    #:video-frame-archiveentries
    #:video-frame-quarantined
    #:video-frame-executable
    #:video-frame-parsestatus
    #:video-frame-parser
    #:video-frame-parserversion
    #:video-frame-parseerror
    #:video-frame-containerfile
    #:video-frame-parentfile
    #:video-frame-derivedfiles
    #:video-frame-captureaction
    #:video-frame-extractedmetadata
    #:video-frame-width
    #:video-frame-height
    #:video-frame-orientation
    #:video-frame-capturedat
    #:video-frame-capturedevice
    #:video-frame-location
    #:video-frame-exif
    #:video-frame-ocrtext
    #:video-frame-thumbnailfiles
    #:video-frame-derivedimages
    #:video-frame-video
    #:video-frame-frameindex
    #:video-frame-timestampms
    #:video-frame-keyframe
    #:video-frame-detectedobjects
    #:video-frame-entityobservations
    #:video-frame-faceobservations
    #:audio
    #:MAKE-audio
    #:COPY-audio
    #:audio-P
    #:+audio-WIRE-FIELDS+
    #:audio-id
    #:audio-rev
    #:audio-dataset
    #:audio-dtype
    #:audio-schemaversion
    #:audio-externalids
    #:audio-aliases
    #:audio-sources
    #:audio-sourceurls
    #:audio-sourcerecordids
    #:audio-sourcekinds
    #:audio-sourcelicense
    #:audio-sourceterms
    #:audio-sourceretrievedat
    #:audio-collectedat
    #:audio-observedat
    #:audio-firstseenat
    #:audio-lastseenat
    #:audio-createdat
    #:audio-updatedat
    #:audio-validfrom
    #:audio-validuntil
    #:audio-expiresat
    #:audio-collector
    #:audio-collectorversion
    #:audio-collectionmethod
    #:audio-collectionstatus
    #:audio-runid
    #:audio-correlationid
    #:audio-causationid
    #:audio-parentid
    #:audio-rootid
    #:audio-confidence
    #:audio-confidencebasis
    #:audio-qualityscore
    #:audio-completenessscore
    #:audio-verificationstatus
    #:audio-verifiedat
    #:audio-verifiedby
    #:audio-provenance
    #:audio-chainofcustody
    #:audio-transformhistory
    #:audio-labels
    #:audio-tags
    #:audio-topics
    #:audio-language
    #:audio-jurisdiction
    #:audio-countrycode
    #:audio-regioncode
    #:audio-timezone
    #:audio-sensitivity
    #:audio-visibility
    #:audio-owner
    #:audio-accesscontrol
    #:audio-legalbasis
    #:audio-retentionpolicy
    #:audio-contenttype
    #:audio-encoding
    #:audio-sizebytes
    #:audio-contenthash
    #:audio-hashalgorithm
    #:audio-normalizedhash
    #:audio-raw
    #:audio-rawcontent
    #:audio-notes
    #:audio-deleted
    #:audio-tombstonereason
    #:audio-extensions
    #:audio-name
    #:audio-filename
    #:audio-originalname
    #:audio-uri
    #:audio-storageuri
    #:audio-path
    #:audio-filekind
    #:audio-mediatype
    #:audio-declaredmediatype
    #:audio-sniffedmediatype
    #:audio-magictype
    #:audio-detectedformat
    #:audio-extension
    #:audio-storageid
    #:audio-byteshash
    #:audio-byteshashalgorithm
    #:audio-hashes
    #:audio-trustfilenameextension
    #:audio-compression
    #:audio-encrypted
    #:audio-passwordprotected
    #:audio-archive
    #:audio-archiveentries
    #:audio-quarantined
    #:audio-executable
    #:audio-parsestatus
    #:audio-parser
    #:audio-parserversion
    #:audio-parseerror
    #:audio-containerfile
    #:audio-parentfile
    #:audio-derivedfiles
    #:audio-captureaction
    #:audio-extractedmetadata
    #:audio-codec
    #:audio-container
    #:audio-sampleratehz
    #:audio-channels
    #:audio-bitdepth
    #:audio-durationseconds
    #:audio-capturedat
    #:audio-capturedevice
    #:audio-location
    #:audio-transcripts
    #:audio-speakerobservations
    #:audio-segment
    #:MAKE-audio-segment
    #:COPY-audio-segment
    #:audio-segment-P
    #:+audio-segment-WIRE-FIELDS+
    #:audio-segment-id
    #:audio-segment-rev
    #:audio-segment-dataset
    #:audio-segment-dtype
    #:audio-segment-schemaversion
    #:audio-segment-externalids
    #:audio-segment-aliases
    #:audio-segment-sources
    #:audio-segment-sourceurls
    #:audio-segment-sourcerecordids
    #:audio-segment-sourcekinds
    #:audio-segment-sourcelicense
    #:audio-segment-sourceterms
    #:audio-segment-sourceretrievedat
    #:audio-segment-collectedat
    #:audio-segment-observedat
    #:audio-segment-firstseenat
    #:audio-segment-lastseenat
    #:audio-segment-createdat
    #:audio-segment-updatedat
    #:audio-segment-validfrom
    #:audio-segment-validuntil
    #:audio-segment-expiresat
    #:audio-segment-collector
    #:audio-segment-collectorversion
    #:audio-segment-collectionmethod
    #:audio-segment-collectionstatus
    #:audio-segment-runid
    #:audio-segment-correlationid
    #:audio-segment-causationid
    #:audio-segment-parentid
    #:audio-segment-rootid
    #:audio-segment-confidence
    #:audio-segment-confidencebasis
    #:audio-segment-qualityscore
    #:audio-segment-completenessscore
    #:audio-segment-verificationstatus
    #:audio-segment-verifiedat
    #:audio-segment-verifiedby
    #:audio-segment-provenance
    #:audio-segment-chainofcustody
    #:audio-segment-transformhistory
    #:audio-segment-labels
    #:audio-segment-tags
    #:audio-segment-topics
    #:audio-segment-language
    #:audio-segment-jurisdiction
    #:audio-segment-countrycode
    #:audio-segment-regioncode
    #:audio-segment-timezone
    #:audio-segment-sensitivity
    #:audio-segment-visibility
    #:audio-segment-owner
    #:audio-segment-accesscontrol
    #:audio-segment-legalbasis
    #:audio-segment-retentionpolicy
    #:audio-segment-contenttype
    #:audio-segment-encoding
    #:audio-segment-sizebytes
    #:audio-segment-contenthash
    #:audio-segment-hashalgorithm
    #:audio-segment-normalizedhash
    #:audio-segment-raw
    #:audio-segment-rawcontent
    #:audio-segment-notes
    #:audio-segment-deleted
    #:audio-segment-tombstonereason
    #:audio-segment-extensions
    #:audio-segment-recording
    #:audio-segment-startms
    #:audio-segment-endms
    #:audio-segment-segmentfile
    #:audio-segment-channel
    #:speech-segment
    #:MAKE-speech-segment
    #:COPY-speech-segment
    #:speech-segment-P
    #:+speech-segment-WIRE-FIELDS+
    #:speech-segment-id
    #:speech-segment-rev
    #:speech-segment-dataset
    #:speech-segment-dtype
    #:speech-segment-schemaversion
    #:speech-segment-externalids
    #:speech-segment-aliases
    #:speech-segment-sources
    #:speech-segment-sourceurls
    #:speech-segment-sourcerecordids
    #:speech-segment-sourcekinds
    #:speech-segment-sourcelicense
    #:speech-segment-sourceterms
    #:speech-segment-sourceretrievedat
    #:speech-segment-collectedat
    #:speech-segment-observedat
    #:speech-segment-firstseenat
    #:speech-segment-lastseenat
    #:speech-segment-createdat
    #:speech-segment-updatedat
    #:speech-segment-validfrom
    #:speech-segment-validuntil
    #:speech-segment-expiresat
    #:speech-segment-collector
    #:speech-segment-collectorversion
    #:speech-segment-collectionmethod
    #:speech-segment-collectionstatus
    #:speech-segment-runid
    #:speech-segment-correlationid
    #:speech-segment-causationid
    #:speech-segment-parentid
    #:speech-segment-rootid
    #:speech-segment-confidence
    #:speech-segment-confidencebasis
    #:speech-segment-qualityscore
    #:speech-segment-completenessscore
    #:speech-segment-verificationstatus
    #:speech-segment-verifiedat
    #:speech-segment-verifiedby
    #:speech-segment-provenance
    #:speech-segment-chainofcustody
    #:speech-segment-transformhistory
    #:speech-segment-labels
    #:speech-segment-tags
    #:speech-segment-topics
    #:speech-segment-language
    #:speech-segment-jurisdiction
    #:speech-segment-countrycode
    #:speech-segment-regioncode
    #:speech-segment-timezone
    #:speech-segment-sensitivity
    #:speech-segment-visibility
    #:speech-segment-owner
    #:speech-segment-accesscontrol
    #:speech-segment-legalbasis
    #:speech-segment-retentionpolicy
    #:speech-segment-contenttype
    #:speech-segment-encoding
    #:speech-segment-sizebytes
    #:speech-segment-contenthash
    #:speech-segment-hashalgorithm
    #:speech-segment-normalizedhash
    #:speech-segment-raw
    #:speech-segment-rawcontent
    #:speech-segment-notes
    #:speech-segment-deleted
    #:speech-segment-tombstonereason
    #:speech-segment-extensions
    #:speech-segment-recording
    #:speech-segment-startms
    #:speech-segment-endms
    #:speech-segment-segmentfile
    #:speech-segment-channel
    #:speech-segment-text
    #:speech-segment-speaker
    #:speech-segment-transcript
    #:speaker
    #:MAKE-speaker
    #:COPY-speaker
    #:speaker-P
    #:+speaker-WIRE-FIELDS+
    #:speaker-id
    #:speaker-rev
    #:speaker-dataset
    #:speaker-dtype
    #:speaker-schemaversion
    #:speaker-externalids
    #:speaker-aliases
    #:speaker-sources
    #:speaker-sourceurls
    #:speaker-sourcerecordids
    #:speaker-sourcekinds
    #:speaker-sourcelicense
    #:speaker-sourceterms
    #:speaker-sourceretrievedat
    #:speaker-collectedat
    #:speaker-observedat
    #:speaker-firstseenat
    #:speaker-lastseenat
    #:speaker-createdat
    #:speaker-updatedat
    #:speaker-validfrom
    #:speaker-validuntil
    #:speaker-expiresat
    #:speaker-collector
    #:speaker-collectorversion
    #:speaker-collectionmethod
    #:speaker-collectionstatus
    #:speaker-runid
    #:speaker-correlationid
    #:speaker-causationid
    #:speaker-parentid
    #:speaker-rootid
    #:speaker-confidence
    #:speaker-confidencebasis
    #:speaker-qualityscore
    #:speaker-completenessscore
    #:speaker-verificationstatus
    #:speaker-verifiedat
    #:speaker-verifiedby
    #:speaker-provenance
    #:speaker-chainofcustody
    #:speaker-transformhistory
    #:speaker-labels
    #:speaker-tags
    #:speaker-topics
    #:speaker-language
    #:speaker-jurisdiction
    #:speaker-countrycode
    #:speaker-regioncode
    #:speaker-timezone
    #:speaker-sensitivity
    #:speaker-visibility
    #:speaker-owner
    #:speaker-accesscontrol
    #:speaker-legalbasis
    #:speaker-retentionpolicy
    #:speaker-contenttype
    #:speaker-encoding
    #:speaker-sizebytes
    #:speaker-contenthash
    #:speaker-hashalgorithm
    #:speaker-normalizedhash
    #:speaker-raw
    #:speaker-rawcontent
    #:speaker-notes
    #:speaker-deleted
    #:speaker-tombstonereason
    #:speaker-extensions
    #:speaker-label
    #:speaker-person
    #:speaker-embeddingmodel
    #:speaker-embeddingref
    #:speaker-observationcount
    #:speaker-firstobservedat
    #:speaker-lastobservedat
    #:speaker-observation
    #:MAKE-speaker-observation
    #:COPY-speaker-observation
    #:speaker-observation-P
    #:+speaker-observation-WIRE-FIELDS+
    #:speaker-observation-id
    #:speaker-observation-rev
    #:speaker-observation-dataset
    #:speaker-observation-dtype
    #:speaker-observation-schemaversion
    #:speaker-observation-externalids
    #:speaker-observation-aliases
    #:speaker-observation-sources
    #:speaker-observation-sourceurls
    #:speaker-observation-sourcerecordids
    #:speaker-observation-sourcekinds
    #:speaker-observation-sourcelicense
    #:speaker-observation-sourceterms
    #:speaker-observation-sourceretrievedat
    #:speaker-observation-collectedat
    #:speaker-observation-observedat
    #:speaker-observation-firstseenat
    #:speaker-observation-lastseenat
    #:speaker-observation-createdat
    #:speaker-observation-updatedat
    #:speaker-observation-validfrom
    #:speaker-observation-validuntil
    #:speaker-observation-expiresat
    #:speaker-observation-collector
    #:speaker-observation-collectorversion
    #:speaker-observation-collectionmethod
    #:speaker-observation-collectionstatus
    #:speaker-observation-runid
    #:speaker-observation-correlationid
    #:speaker-observation-causationid
    #:speaker-observation-parentid
    #:speaker-observation-rootid
    #:speaker-observation-confidence
    #:speaker-observation-confidencebasis
    #:speaker-observation-qualityscore
    #:speaker-observation-completenessscore
    #:speaker-observation-verificationstatus
    #:speaker-observation-verifiedat
    #:speaker-observation-verifiedby
    #:speaker-observation-provenance
    #:speaker-observation-chainofcustody
    #:speaker-observation-transformhistory
    #:speaker-observation-labels
    #:speaker-observation-tags
    #:speaker-observation-topics
    #:speaker-observation-language
    #:speaker-observation-jurisdiction
    #:speaker-observation-countrycode
    #:speaker-observation-regioncode
    #:speaker-observation-timezone
    #:speaker-observation-sensitivity
    #:speaker-observation-visibility
    #:speaker-observation-owner
    #:speaker-observation-accesscontrol
    #:speaker-observation-legalbasis
    #:speaker-observation-retentionpolicy
    #:speaker-observation-contenttype
    #:speaker-observation-encoding
    #:speaker-observation-sizebytes
    #:speaker-observation-contenthash
    #:speaker-observation-hashalgorithm
    #:speaker-observation-normalizedhash
    #:speaker-observation-raw
    #:speaker-observation-rawcontent
    #:speaker-observation-notes
    #:speaker-observation-deleted
    #:speaker-observation-tombstonereason
    #:speaker-observation-extensions
    #:speaker-observation-speaker
    #:speaker-observation-recording
    #:speaker-observation-segment
    #:speaker-observation-startms
    #:speaker-observation-endms
    #:speaker-observation-embeddingmodel
    #:speaker-observation-embeddingref
    #:speaker-turn
    #:MAKE-speaker-turn
    #:COPY-speaker-turn
    #:speaker-turn-P
    #:+speaker-turn-WIRE-FIELDS+
    #:speaker-turn-id
    #:speaker-turn-rev
    #:speaker-turn-dataset
    #:speaker-turn-dtype
    #:speaker-turn-schemaversion
    #:speaker-turn-externalids
    #:speaker-turn-aliases
    #:speaker-turn-sources
    #:speaker-turn-sourceurls
    #:speaker-turn-sourcerecordids
    #:speaker-turn-sourcekinds
    #:speaker-turn-sourcelicense
    #:speaker-turn-sourceterms
    #:speaker-turn-sourceretrievedat
    #:speaker-turn-collectedat
    #:speaker-turn-observedat
    #:speaker-turn-firstseenat
    #:speaker-turn-lastseenat
    #:speaker-turn-createdat
    #:speaker-turn-updatedat
    #:speaker-turn-validfrom
    #:speaker-turn-validuntil
    #:speaker-turn-expiresat
    #:speaker-turn-collector
    #:speaker-turn-collectorversion
    #:speaker-turn-collectionmethod
    #:speaker-turn-collectionstatus
    #:speaker-turn-runid
    #:speaker-turn-correlationid
    #:speaker-turn-causationid
    #:speaker-turn-parentid
    #:speaker-turn-rootid
    #:speaker-turn-confidence
    #:speaker-turn-confidencebasis
    #:speaker-turn-qualityscore
    #:speaker-turn-completenessscore
    #:speaker-turn-verificationstatus
    #:speaker-turn-verifiedat
    #:speaker-turn-verifiedby
    #:speaker-turn-provenance
    #:speaker-turn-chainofcustody
    #:speaker-turn-transformhistory
    #:speaker-turn-labels
    #:speaker-turn-tags
    #:speaker-turn-topics
    #:speaker-turn-language
    #:speaker-turn-jurisdiction
    #:speaker-turn-countrycode
    #:speaker-turn-regioncode
    #:speaker-turn-timezone
    #:speaker-turn-sensitivity
    #:speaker-turn-visibility
    #:speaker-turn-owner
    #:speaker-turn-accesscontrol
    #:speaker-turn-legalbasis
    #:speaker-turn-retentionpolicy
    #:speaker-turn-contenttype
    #:speaker-turn-encoding
    #:speaker-turn-sizebytes
    #:speaker-turn-contenthash
    #:speaker-turn-hashalgorithm
    #:speaker-turn-normalizedhash
    #:speaker-turn-raw
    #:speaker-turn-rawcontent
    #:speaker-turn-notes
    #:speaker-turn-deleted
    #:speaker-turn-tombstonereason
    #:speaker-turn-extensions
    #:speaker-turn-recording
    #:speaker-turn-speaker
    #:speaker-turn-segment
    #:speaker-turn-turnindex
    #:speaker-turn-startms
    #:speaker-turn-endms
    #:speaker-turn-text
    #:transcript
    #:MAKE-transcript
    #:COPY-transcript
    #:transcript-P
    #:+transcript-WIRE-FIELDS+
    #:transcript-id
    #:transcript-rev
    #:transcript-dataset
    #:transcript-dtype
    #:transcript-schemaversion
    #:transcript-externalids
    #:transcript-aliases
    #:transcript-sources
    #:transcript-sourceurls
    #:transcript-sourcerecordids
    #:transcript-sourcekinds
    #:transcript-sourcelicense
    #:transcript-sourceterms
    #:transcript-sourceretrievedat
    #:transcript-collectedat
    #:transcript-observedat
    #:transcript-firstseenat
    #:transcript-lastseenat
    #:transcript-createdat
    #:transcript-updatedat
    #:transcript-validfrom
    #:transcript-validuntil
    #:transcript-expiresat
    #:transcript-collector
    #:transcript-collectorversion
    #:transcript-collectionmethod
    #:transcript-collectionstatus
    #:transcript-runid
    #:transcript-correlationid
    #:transcript-causationid
    #:transcript-parentid
    #:transcript-rootid
    #:transcript-confidence
    #:transcript-confidencebasis
    #:transcript-qualityscore
    #:transcript-completenessscore
    #:transcript-verificationstatus
    #:transcript-verifiedat
    #:transcript-verifiedby
    #:transcript-provenance
    #:transcript-chainofcustody
    #:transcript-transformhistory
    #:transcript-labels
    #:transcript-tags
    #:transcript-topics
    #:transcript-language
    #:transcript-jurisdiction
    #:transcript-countrycode
    #:transcript-regioncode
    #:transcript-timezone
    #:transcript-sensitivity
    #:transcript-visibility
    #:transcript-owner
    #:transcript-accesscontrol
    #:transcript-legalbasis
    #:transcript-retentionpolicy
    #:transcript-contenttype
    #:transcript-encoding
    #:transcript-sizebytes
    #:transcript-contenthash
    #:transcript-hashalgorithm
    #:transcript-normalizedhash
    #:transcript-raw
    #:transcript-rawcontent
    #:transcript-notes
    #:transcript-deleted
    #:transcript-tombstonereason
    #:transcript-extensions
    #:transcript-sourcemedia
    #:transcript-transcriptfile
    #:transcript-text
    #:transcript-model
    #:transcript-modelversion
    #:transcript-actor
    #:transcript-startedat
    #:transcript-completedat
    #:transcript-segments
    #:transcript-speakerturns
    #:transcript-wordtimings
    #:http-transaction
    #:MAKE-http-transaction
    #:COPY-http-transaction
    #:http-transaction-P
    #:+http-transaction-WIRE-FIELDS+
    #:http-transaction-id
    #:http-transaction-rev
    #:http-transaction-dataset
    #:http-transaction-dtype
    #:http-transaction-schemaversion
    #:http-transaction-externalids
    #:http-transaction-aliases
    #:http-transaction-sources
    #:http-transaction-sourceurls
    #:http-transaction-sourcerecordids
    #:http-transaction-sourcekinds
    #:http-transaction-sourcelicense
    #:http-transaction-sourceterms
    #:http-transaction-sourceretrievedat
    #:http-transaction-collectedat
    #:http-transaction-observedat
    #:http-transaction-firstseenat
    #:http-transaction-lastseenat
    #:http-transaction-createdat
    #:http-transaction-updatedat
    #:http-transaction-validfrom
    #:http-transaction-validuntil
    #:http-transaction-expiresat
    #:http-transaction-collector
    #:http-transaction-collectorversion
    #:http-transaction-collectionmethod
    #:http-transaction-collectionstatus
    #:http-transaction-runid
    #:http-transaction-correlationid
    #:http-transaction-causationid
    #:http-transaction-parentid
    #:http-transaction-rootid
    #:http-transaction-confidence
    #:http-transaction-confidencebasis
    #:http-transaction-qualityscore
    #:http-transaction-completenessscore
    #:http-transaction-verificationstatus
    #:http-transaction-verifiedat
    #:http-transaction-verifiedby
    #:http-transaction-provenance
    #:http-transaction-chainofcustody
    #:http-transaction-transformhistory
    #:http-transaction-labels
    #:http-transaction-tags
    #:http-transaction-topics
    #:http-transaction-language
    #:http-transaction-jurisdiction
    #:http-transaction-countrycode
    #:http-transaction-regioncode
    #:http-transaction-timezone
    #:http-transaction-sensitivity
    #:http-transaction-visibility
    #:http-transaction-owner
    #:http-transaction-accesscontrol
    #:http-transaction-legalbasis
    #:http-transaction-retentionpolicy
    #:http-transaction-contenttype
    #:http-transaction-encoding
    #:http-transaction-sizebytes
    #:http-transaction-contenthash
    #:http-transaction-hashalgorithm
    #:http-transaction-normalizedhash
    #:http-transaction-raw
    #:http-transaction-rawcontent
    #:http-transaction-notes
    #:http-transaction-deleted
    #:http-transaction-tombstonereason
    #:http-transaction-extensions
    #:http-transaction-transactionid
    #:http-transaction-requestid
    #:http-transaction-connectionid
    #:http-transaction-parenttransactionid
    #:http-transaction-method
    #:http-transaction-url
    #:http-transaction-scheme
    #:http-transaction-host
    #:http-transaction-port
    #:http-transaction-path
    #:http-transaction-query
    #:http-transaction-httpversion
    #:http-transaction-requestheaders
    #:http-transaction-requestbodysize
    #:http-transaction-requestbodyhash
    #:http-transaction-requestbodyartifacturi
    #:http-transaction-responsestatus
    #:http-transaction-responsereason
    #:http-transaction-responseheaders
    #:http-transaction-responsebodysize
    #:http-transaction-responsebodyhash
    #:http-transaction-responsebodyartifacturi
    #:http-transaction-startedat
    #:http-transaction-endedat
    #:http-transaction-durationms
    #:http-transaction-remoteip
    #:http-transaction-remoteport
    #:http-transaction-tlsversion
    #:http-transaction-tlscipher
    #:http-transaction-tlsservername
    #:http-transaction-certificatesha256
    #:http-transaction-redirectfromid
    #:http-transaction-redirecttoid
    #:http-transaction-captureactoruri
    #:http-transaction-challengestatus
    #:http-transaction-captchadetectionid
    #:http-transaction-captchacapability
    #:http-transaction-browsersessionref
    #:http-transaction-networkcontextref
    #:http-transaction-proxyactoruri
    #:http-transaction-redactedheaders
    #:http-transaction-bodycapturepolicy
    #:http-transaction-requesttruncated
    #:http-transaction-responsetruncated
    #:web-capture
    #:MAKE-web-capture
    #:COPY-web-capture
    #:web-capture-P
    #:+web-capture-WIRE-FIELDS+
    #:web-capture-id
    #:web-capture-rev
    #:web-capture-dataset
    #:web-capture-dtype
    #:web-capture-schemaversion
    #:web-capture-externalids
    #:web-capture-aliases
    #:web-capture-sources
    #:web-capture-sourceurls
    #:web-capture-sourcerecordids
    #:web-capture-sourcekinds
    #:web-capture-sourcelicense
    #:web-capture-sourceterms
    #:web-capture-sourceretrievedat
    #:web-capture-collectedat
    #:web-capture-observedat
    #:web-capture-firstseenat
    #:web-capture-lastseenat
    #:web-capture-createdat
    #:web-capture-updatedat
    #:web-capture-validfrom
    #:web-capture-validuntil
    #:web-capture-expiresat
    #:web-capture-collector
    #:web-capture-collectorversion
    #:web-capture-collectionmethod
    #:web-capture-collectionstatus
    #:web-capture-runid
    #:web-capture-correlationid
    #:web-capture-causationid
    #:web-capture-parentid
    #:web-capture-rootid
    #:web-capture-confidence
    #:web-capture-confidencebasis
    #:web-capture-qualityscore
    #:web-capture-completenessscore
    #:web-capture-verificationstatus
    #:web-capture-verifiedat
    #:web-capture-verifiedby
    #:web-capture-provenance
    #:web-capture-chainofcustody
    #:web-capture-transformhistory
    #:web-capture-labels
    #:web-capture-tags
    #:web-capture-topics
    #:web-capture-language
    #:web-capture-jurisdiction
    #:web-capture-countrycode
    #:web-capture-regioncode
    #:web-capture-timezone
    #:web-capture-sensitivity
    #:web-capture-visibility
    #:web-capture-owner
    #:web-capture-accesscontrol
    #:web-capture-legalbasis
    #:web-capture-retentionpolicy
    #:web-capture-contenttype
    #:web-capture-encoding
    #:web-capture-sizebytes
    #:web-capture-contenthash
    #:web-capture-hashalgorithm
    #:web-capture-normalizedhash
    #:web-capture-raw
    #:web-capture-rawcontent
    #:web-capture-notes
    #:web-capture-deleted
    #:web-capture-tombstonereason
    #:web-capture-extensions
    #:web-capture-captureid
    #:web-capture-url
    #:web-capture-finalurl
    #:web-capture-title
    #:web-capture-statuscode
    #:web-capture-browser
    #:web-capture-browserversion
    #:web-capture-viewportwidth
    #:web-capture-viewportheight
    #:web-capture-devicescalefactor
    #:web-capture-screenshoturi
    #:web-capture-screenshothash
    #:web-capture-screenshotmediatype
    #:web-capture-screenshotsizebytes
    #:web-capture-domartifacturi
    #:web-capture-domartifacthash
    #:web-capture-domartifactsizebytes
    #:web-capture-capturedat
    #:web-capture-httptransactionids
    #:web-capture-captureactoruri
    #:web-capture-challengestatus
    #:web-capture-captchadetectionid
    #:web-capture-captchacapability
    #:web-capture-browsersessionref
    #:web-capture-networkcontextref
    #:web-capture-proxyactoruri
    #:pcap-capture
    #:MAKE-pcap-capture
    #:COPY-pcap-capture
    #:pcap-capture-P
    #:+pcap-capture-WIRE-FIELDS+
    #:pcap-capture-id
    #:pcap-capture-rev
    #:pcap-capture-dataset
    #:pcap-capture-dtype
    #:pcap-capture-schemaversion
    #:pcap-capture-externalids
    #:pcap-capture-aliases
    #:pcap-capture-sources
    #:pcap-capture-sourceurls
    #:pcap-capture-sourcerecordids
    #:pcap-capture-sourcekinds
    #:pcap-capture-sourcelicense
    #:pcap-capture-sourceterms
    #:pcap-capture-sourceretrievedat
    #:pcap-capture-collectedat
    #:pcap-capture-observedat
    #:pcap-capture-firstseenat
    #:pcap-capture-lastseenat
    #:pcap-capture-createdat
    #:pcap-capture-updatedat
    #:pcap-capture-validfrom
    #:pcap-capture-validuntil
    #:pcap-capture-expiresat
    #:pcap-capture-collector
    #:pcap-capture-collectorversion
    #:pcap-capture-collectionmethod
    #:pcap-capture-collectionstatus
    #:pcap-capture-runid
    #:pcap-capture-correlationid
    #:pcap-capture-causationid
    #:pcap-capture-parentid
    #:pcap-capture-rootid
    #:pcap-capture-confidence
    #:pcap-capture-confidencebasis
    #:pcap-capture-qualityscore
    #:pcap-capture-completenessscore
    #:pcap-capture-verificationstatus
    #:pcap-capture-verifiedat
    #:pcap-capture-verifiedby
    #:pcap-capture-provenance
    #:pcap-capture-chainofcustody
    #:pcap-capture-transformhistory
    #:pcap-capture-labels
    #:pcap-capture-tags
    #:pcap-capture-topics
    #:pcap-capture-language
    #:pcap-capture-jurisdiction
    #:pcap-capture-countrycode
    #:pcap-capture-regioncode
    #:pcap-capture-timezone
    #:pcap-capture-sensitivity
    #:pcap-capture-visibility
    #:pcap-capture-owner
    #:pcap-capture-accesscontrol
    #:pcap-capture-legalbasis
    #:pcap-capture-retentionpolicy
    #:pcap-capture-contenttype
    #:pcap-capture-encoding
    #:pcap-capture-sizebytes
    #:pcap-capture-contenthash
    #:pcap-capture-hashalgorithm
    #:pcap-capture-normalizedhash
    #:pcap-capture-raw
    #:pcap-capture-rawcontent
    #:pcap-capture-notes
    #:pcap-capture-deleted
    #:pcap-capture-tombstonereason
    #:pcap-capture-extensions
    #:pcap-capture-captureid
    #:pcap-capture-file
    #:pcap-capture-fileuri
    #:pcap-capture-filesha256
    #:pcap-capture-format
    #:pcap-capture-filesizebytes
    #:pcap-capture-packetcount
    #:pcap-capture-capturestart
    #:pcap-capture-captureend
    #:pcap-capture-durationseconds
    #:pcap-capture-capturesoftware
    #:pcap-capture-sensor
    #:pcap-capture-interfaces
    #:pcap-capture-protocolhierarchy
    #:pcap-capture-analysisactoruri
    #:network-conversation
    #:MAKE-network-conversation
    #:COPY-network-conversation
    #:network-conversation-P
    #:+network-conversation-WIRE-FIELDS+
    #:network-conversation-id
    #:network-conversation-rev
    #:network-conversation-dataset
    #:network-conversation-dtype
    #:network-conversation-schemaversion
    #:network-conversation-externalids
    #:network-conversation-aliases
    #:network-conversation-sources
    #:network-conversation-sourceurls
    #:network-conversation-sourcerecordids
    #:network-conversation-sourcekinds
    #:network-conversation-sourcelicense
    #:network-conversation-sourceterms
    #:network-conversation-sourceretrievedat
    #:network-conversation-collectedat
    #:network-conversation-observedat
    #:network-conversation-firstseenat
    #:network-conversation-lastseenat
    #:network-conversation-createdat
    #:network-conversation-updatedat
    #:network-conversation-validfrom
    #:network-conversation-validuntil
    #:network-conversation-expiresat
    #:network-conversation-collector
    #:network-conversation-collectorversion
    #:network-conversation-collectionmethod
    #:network-conversation-collectionstatus
    #:network-conversation-runid
    #:network-conversation-correlationid
    #:network-conversation-causationid
    #:network-conversation-parentid
    #:network-conversation-rootid
    #:network-conversation-confidence
    #:network-conversation-confidencebasis
    #:network-conversation-qualityscore
    #:network-conversation-completenessscore
    #:network-conversation-verificationstatus
    #:network-conversation-verifiedat
    #:network-conversation-verifiedby
    #:network-conversation-provenance
    #:network-conversation-chainofcustody
    #:network-conversation-transformhistory
    #:network-conversation-labels
    #:network-conversation-tags
    #:network-conversation-topics
    #:network-conversation-language
    #:network-conversation-jurisdiction
    #:network-conversation-countrycode
    #:network-conversation-regioncode
    #:network-conversation-timezone
    #:network-conversation-sensitivity
    #:network-conversation-visibility
    #:network-conversation-owner
    #:network-conversation-accesscontrol
    #:network-conversation-legalbasis
    #:network-conversation-retentionpolicy
    #:network-conversation-contenttype
    #:network-conversation-encoding
    #:network-conversation-sizebytes
    #:network-conversation-contenthash
    #:network-conversation-hashalgorithm
    #:network-conversation-normalizedhash
    #:network-conversation-raw
    #:network-conversation-rawcontent
    #:network-conversation-notes
    #:network-conversation-deleted
    #:network-conversation-tombstonereason
    #:network-conversation-extensions
    #:network-conversation-conversationid
    #:network-conversation-capture
    #:network-conversation-layer
    #:network-conversation-endpointa
    #:network-conversation-endpointb
    #:network-conversation-apackets
    #:network-conversation-bpackets
    #:network-conversation-abytes
    #:network-conversation-bbytes
    #:network-conversation-protocols
    #:network-conversation-firstframenum
    #:network-conversation-lastframenum
    #:network-conversation-startedat
    #:network-conversation-endedat
    #:network-conversation-durationseconds
    #:network-device
    #:MAKE-network-device
    #:COPY-network-device
    #:network-device-P
    #:+network-device-WIRE-FIELDS+
    #:network-device-id
    #:network-device-rev
    #:network-device-dataset
    #:network-device-dtype
    #:network-device-schemaversion
    #:network-device-externalids
    #:network-device-aliases
    #:network-device-sources
    #:network-device-sourceurls
    #:network-device-sourcerecordids
    #:network-device-sourcekinds
    #:network-device-sourcelicense
    #:network-device-sourceterms
    #:network-device-sourceretrievedat
    #:network-device-collectedat
    #:network-device-observedat
    #:network-device-firstseenat
    #:network-device-lastseenat
    #:network-device-createdat
    #:network-device-updatedat
    #:network-device-validfrom
    #:network-device-validuntil
    #:network-device-expiresat
    #:network-device-collector
    #:network-device-collectorversion
    #:network-device-collectionmethod
    #:network-device-collectionstatus
    #:network-device-runid
    #:network-device-correlationid
    #:network-device-causationid
    #:network-device-parentid
    #:network-device-rootid
    #:network-device-confidence
    #:network-device-confidencebasis
    #:network-device-qualityscore
    #:network-device-completenessscore
    #:network-device-verificationstatus
    #:network-device-verifiedat
    #:network-device-verifiedby
    #:network-device-provenance
    #:network-device-chainofcustody
    #:network-device-transformhistory
    #:network-device-labels
    #:network-device-tags
    #:network-device-topics
    #:network-device-language
    #:network-device-jurisdiction
    #:network-device-countrycode
    #:network-device-regioncode
    #:network-device-timezone
    #:network-device-sensitivity
    #:network-device-visibility
    #:network-device-owner
    #:network-device-accesscontrol
    #:network-device-legalbasis
    #:network-device-retentionpolicy
    #:network-device-contenttype
    #:network-device-encoding
    #:network-device-sizebytes
    #:network-device-contenthash
    #:network-device-hashalgorithm
    #:network-device-normalizedhash
    #:network-device-raw
    #:network-device-rawcontent
    #:network-device-notes
    #:network-device-deleted
    #:network-device-tombstonereason
    #:network-device-extensions
    #:network-device-deviceid
    #:network-device-deviceclass
    #:network-device-hardwareclass
    #:network-device-vendor
    #:network-device-model
    #:network-device-firmwareversion
    #:network-device-serialnumber
    #:network-device-cpe
    #:network-device-parentdevice
    #:network-device-site
    #:network-device-managementaddresses
    #:network-device-hostedhosts
    #:network-device-discoveredby
    #:network-device-firstseen
    #:network-device-lastseen
    #:wireless-network
    #:MAKE-wireless-network
    #:COPY-wireless-network
    #:wireless-network-P
    #:+wireless-network-WIRE-FIELDS+
    #:wireless-network-id
    #:wireless-network-rev
    #:wireless-network-dataset
    #:wireless-network-dtype
    #:wireless-network-schemaversion
    #:wireless-network-externalids
    #:wireless-network-aliases
    #:wireless-network-sources
    #:wireless-network-sourceurls
    #:wireless-network-sourcerecordids
    #:wireless-network-sourcekinds
    #:wireless-network-sourcelicense
    #:wireless-network-sourceterms
    #:wireless-network-sourceretrievedat
    #:wireless-network-collectedat
    #:wireless-network-observedat
    #:wireless-network-firstseenat
    #:wireless-network-lastseenat
    #:wireless-network-createdat
    #:wireless-network-updatedat
    #:wireless-network-validfrom
    #:wireless-network-validuntil
    #:wireless-network-expiresat
    #:wireless-network-collector
    #:wireless-network-collectorversion
    #:wireless-network-collectionmethod
    #:wireless-network-collectionstatus
    #:wireless-network-runid
    #:wireless-network-correlationid
    #:wireless-network-causationid
    #:wireless-network-parentid
    #:wireless-network-rootid
    #:wireless-network-confidence
    #:wireless-network-confidencebasis
    #:wireless-network-qualityscore
    #:wireless-network-completenessscore
    #:wireless-network-verificationstatus
    #:wireless-network-verifiedat
    #:wireless-network-verifiedby
    #:wireless-network-provenance
    #:wireless-network-chainofcustody
    #:wireless-network-transformhistory
    #:wireless-network-labels
    #:wireless-network-tags
    #:wireless-network-topics
    #:wireless-network-language
    #:wireless-network-jurisdiction
    #:wireless-network-countrycode
    #:wireless-network-regioncode
    #:wireless-network-timezone
    #:wireless-network-sensitivity
    #:wireless-network-visibility
    #:wireless-network-owner
    #:wireless-network-accesscontrol
    #:wireless-network-legalbasis
    #:wireless-network-retentionpolicy
    #:wireless-network-contenttype
    #:wireless-network-encoding
    #:wireless-network-sizebytes
    #:wireless-network-contenthash
    #:wireless-network-hashalgorithm
    #:wireless-network-normalizedhash
    #:wireless-network-raw
    #:wireless-network-rawcontent
    #:wireless-network-notes
    #:wireless-network-deleted
    #:wireless-network-tombstonereason
    #:wireless-network-extensions
    #:wireless-network-bssid
    #:wireless-network-ssid
    #:wireless-network-security
    #:wireless-network-authmode
    #:wireless-network-ciphersuite
    #:wireless-network-channel
    #:wireless-network-frequencymhz
    #:wireless-network-band
    #:wireless-network-signaldbm
    #:wireless-network-vendor
    #:wireless-network-clientcount
    #:wireless-network-sourcenetworkid
    #:wireless-network-hostedhost
    #:wireless-network-location
    #:wireless-network-locationaccuracymeters
    #:wireless-network-observations
    #:wireless-network-firstseen
    #:wireless-network-lastseen
    #:wireless-station
    #:MAKE-wireless-station
    #:COPY-wireless-station
    #:wireless-station-P
    #:+wireless-station-WIRE-FIELDS+
    #:wireless-station-id
    #:wireless-station-rev
    #:wireless-station-dataset
    #:wireless-station-dtype
    #:wireless-station-schemaversion
    #:wireless-station-externalids
    #:wireless-station-aliases
    #:wireless-station-sources
    #:wireless-station-sourceurls
    #:wireless-station-sourcerecordids
    #:wireless-station-sourcekinds
    #:wireless-station-sourcelicense
    #:wireless-station-sourceterms
    #:wireless-station-sourceretrievedat
    #:wireless-station-collectedat
    #:wireless-station-observedat
    #:wireless-station-firstseenat
    #:wireless-station-lastseenat
    #:wireless-station-createdat
    #:wireless-station-updatedat
    #:wireless-station-validfrom
    #:wireless-station-validuntil
    #:wireless-station-expiresat
    #:wireless-station-collector
    #:wireless-station-collectorversion
    #:wireless-station-collectionmethod
    #:wireless-station-collectionstatus
    #:wireless-station-runid
    #:wireless-station-correlationid
    #:wireless-station-causationid
    #:wireless-station-parentid
    #:wireless-station-rootid
    #:wireless-station-confidence
    #:wireless-station-confidencebasis
    #:wireless-station-qualityscore
    #:wireless-station-completenessscore
    #:wireless-station-verificationstatus
    #:wireless-station-verifiedat
    #:wireless-station-verifiedby
    #:wireless-station-provenance
    #:wireless-station-chainofcustody
    #:wireless-station-transformhistory
    #:wireless-station-labels
    #:wireless-station-tags
    #:wireless-station-topics
    #:wireless-station-language
    #:wireless-station-jurisdiction
    #:wireless-station-countrycode
    #:wireless-station-regioncode
    #:wireless-station-timezone
    #:wireless-station-sensitivity
    #:wireless-station-visibility
    #:wireless-station-owner
    #:wireless-station-accesscontrol
    #:wireless-station-legalbasis
    #:wireless-station-retentionpolicy
    #:wireless-station-contenttype
    #:wireless-station-encoding
    #:wireless-station-sizebytes
    #:wireless-station-contenthash
    #:wireless-station-hashalgorithm
    #:wireless-station-normalizedhash
    #:wireless-station-raw
    #:wireless-station-rawcontent
    #:wireless-station-notes
    #:wireless-station-deleted
    #:wireless-station-tombstonereason
    #:wireless-station-extensions
    #:wireless-station-mac
    #:wireless-station-stationtype
    #:wireless-station-lastbssid
    #:wireless-station-probessids
    #:wireless-station-signaldbm
    #:wireless-station-vendor
    #:wireless-station-packets
    #:wireless-station-databytes
    #:wireless-station-observations
    #:wireless-station-sourcedevice
    #:wireless-station-firstseen
    #:wireless-station-lastseen
    #:upsert-document
    #:MAKE-upsert-document
    #:COPY-upsert-document
    #:upsert-document-P
    #:+upsert-document-WIRE-FIELDS+
    #:upsert-document-document
    #:upsert-document-dataset
    #:upsert-document-runid
    #:query-documents
    #:MAKE-query-documents
    #:COPY-query-documents
    #:query-documents-P
    #:+query-documents-WIRE-FIELDS+
    #:query-documents-dataset
    #:query-documents-dtype
    #:query-documents-filters
    #:query-documents-limit
    #:query-documents-cursor
    #:schedule-target
    #:MAKE-schedule-target
    #:COPY-schedule-target
    #:schedule-target-P
    #:+schedule-target-WIRE-FIELDS+
    #:schedule-target-target
    #:schedule-target-requestedby
    #:schedule-mission
    #:MAKE-schedule-mission
    #:COPY-schedule-mission
    #:schedule-mission-P
    #:+schedule-mission-WIRE-FIELDS+
    #:schedule-mission-mission
    #:schedule-mission-requestedby
    #:query-spatial
    #:MAKE-query-spatial
    #:COPY-query-spatial
    #:query-spatial-P
    #:+query-spatial-WIRE-FIELDS+
    #:query-spatial-dataset
    #:query-spatial-mode
    #:query-spatial-geometry
    #:query-spatial-boundingbox
    #:query-spatial-referencepoint
    #:query-spatial-maximumdistancemeters
    #:query-spatial-dtype
    #:query-spatial-filters
    #:query-spatial-attime
    #:query-spatial-limit
    #:query-spatial-cursor
    #:actor-manifest-announcement
    #:MAKE-actor-manifest-announcement
    #:COPY-actor-manifest-announcement
    #:actor-manifest-announcement-P
    #:+actor-manifest-announcement-WIRE-FIELDS+
    #:actor-manifest-announcement-manifest
    #:actor-manifest-announcement-announcedat
  ))

(in-package #:org.starintel.core.v1)

(defstruct star-reference
  (schema nil)
  (id nil)
)
(defparameter +star-reference-wire-fields+
  '(
    ("schema" . schema)
    ("id" . id)
  ))

(deftype document-id () 'string)

(deftype unix-time () 'integer)

(deftype confidence-score () 'string)

(deftype latitude () 'string)

(deftype longitude () 'string)

(deftype port-number () 'integer)

(deftype asn-number () 'integer)

(deftype uri () 'string)

(deftype email-address () 'string)

(deftype phone-number () 'string)

(deftype distance-meters () 'string)

(deftype analysis-confidence () 'string)

(deftype asset-identifier-records-item-confidence () 'string)

(deftype asset-external-ids-item-confidence () 'string)

(deftype campaign-finance-source-system-ids-item-confidence () 'string)

(deftype claim-certainty () 'string)

(deftype contract-source-system-ids-item-confidence () 'string)

(deftype entity-identity-confidence () 'string)

(deftype entity-identity-keys-item-confidence () 'string)

(deftype entity-external-ids-item-confidence () 'string)

(deftype evidence-record-confidence () 'string)

(deftype procurement-source-system-ids-item-confidence () 'string)

(deftype product-external-ids-item-confidence () 'string)

(deftype research-node-limits-max-depth () 'integer)

(deftype research-node-limits-max-actor-runs () 'integer)

(deftype research-node-limits-max-requests () 'integer)

(deftype research-node-limits-max-elapsed-ms () 'integer)

(deftype research-node-limits-max-repeated-state () 'integer)

(deftype research-node-limits-max-cost () 'string)

(deftype research-node-counters-depth () 'integer)

(deftype research-node-counters-actor-runs () 'integer)

(deftype research-node-counters-requests () 'integer)

(deftype research-node-counters-repeated-state () 'integer)

(deftype research-node-counters-elapsed-ms () 'integer)

(deftype research-node-counters-cost () 'string)

(deftype source-credibility () 'string)

(deftype source-reliability () 'string)

(deftype source-authenticity () 'string)

(deftype source-independence () 'string)

(deftype sensitivity () '(member "public" "internal" "confidential" "restricted" "secret" "unknown"))

(deftype visibility () '(member "public" "private" "shared" "inherited" "unknown"))

(deftype collection-status () '(member "raw" "normalized" "enriched" "verified" "disputed" "stale" "deleted" "unknown"))

(deftype source-kind () '(member "api" "web" "file" "database" "message" "human" "sensor" "inference" "import" "export" "unknown"))

(deftype hash-algorithm () '(member "sha256" "sha512" "blake2b" "blake3" "md5" "unknown"))

(deftype relation-direction () '(member "directed" "symmetric" "inverse" "unknown"))

(deftype target-state () '(member "pending" "scheduled" "running" "completed" "failed" "cancelled" "paused" "unknown"))

(deftype mission-state () '(member "draft" "ready" "running" "paused" "completed" "failed" "cancelled" "archived" "unknown"))

(deftype mission-target-state () '(member "pending" "active" "completed" "failed" "skipped" "cancelled" "unknown"))

(deftype route-mode () '(member "walk" "bicycle" "vehicle" "transit" "air" "marine" "mixed" "unknown"))

(deftype geofence-transition () '(member "enter" "exit" "dwell" "intersect" "unknown"))

(deftype encounter-kind () '(member "co-observed" "proximity" "radio" "visual" "manual" "derived" "unknown"))

(deftype spatial-query-mode () '(member "bounding-box" "intersects" "within" "contains" "nearest"))

(deftype map-layer-kind () '(member "documents" "heatmap" "route" "geofence" "encounters" "custom" "unknown"))

(deftype geo-geometry-type () '(member "point" "line-string" "polygon" "multi-point" "multi-line-string" "multi-polygon" "geometry-collection"))

(deftype operation-role () '(member "collection" "working" "derived" "publication" "reference" "archive"))

(deftype operation-access () '(member "read" "append" "write" "read-write"))

(deftype operation-category () '(member "actor" "software" "hardware" "device" "source" "dataset" "schema" "protocol" "infrastructure" "research"))

(deftype operation-capability-status () '(member "required" "missing" "planned" "in-progress" "available" "resolved" "waived"))

(deftype operation-status () '(member "draft" "planned" "active" "blocked" "suspended" "completed" "aborted" "archived"))

(deftype operation-assignment-status () '(member "planned" "assigned" "active" "completed" "blocked" "released"))

(deftype operation-post-action-status () '(member "planned" "ready" "running" "completed" "failed" "skipped"))

(deftype operation-state () '(member "planned" "ready" "active" "blocked" "awaiting-review" "completed" "skipped" "failed" "aborted"))

(deftype research-node-status () '(member "draft" "queued" "running" "paused" "blocked" "completed" "failed" "killed"))

(deftype pcap-format () '(member "pcap" "pcapng" "unknown"))

(deftype network-layer () '(member "eth" "ip" "ipv6" "tcp" "udp"))

(deftype wireless-security () '(member "open" "wep" "wpa-psk" "wpa2-psk" "wpa2-enterprise" "wpa3-psk" "wpa3-enterprise" "wpa2wpa3-psk" "unknown"))

(deftype wireless-station-type () '(member "station" "ap" "bridge" "bridge-ap" "unknown"))

(deftype network-device-class () '(member "other" "unknown" "general-purpose" "router" "broadband-router" "switch" "wap" "bridge" "firewall" "load-balancer" "proxy-server" "print-server" "terminal-server" "terminal" "phone" "voip-phone" "voip-adapter" "pbx" "webcam" "printer" "media-device" "game-console" "pda" "storage" "storage-misc" "power-device" "remote-management" "security-misc" "specialized" "telecom-misc" "iot"))

(deftype content-hash-algorithm () '(member "sha256" "sha512" "blake2b" "blake3"))

(defstruct document
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
)
(defparameter +document-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
  ))

(defstruct person
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (fname nil)
  (mname nil)
  (lname nil)
  (fullname nil)
  (displayname nil)
  (prefix nil)
  (suffix nil)
  (pronouns nil)
  (bio nil)
  (dob nil)
  (dateofdeath nil)
  (age nil)
  (gender nil)
  (nationality nil)
  (citizenship nil)
  (occupation nil)
  (employer nil)
  (education nil)
  (skills nil)
  (interests nil)
  (region nil)
  (addresses nil)
  (emails nil)
  (phones nil)
  (accounts nil)
  (images nil)
  (identifiers nil)
  (misc nil)
  (etype nil)
  (eid nil)
)
(defparameter +person-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("fname" . fname)
    ("mname" . mname)
    ("lname" . lname)
    ("fullName" . fullname)
    ("displayName" . displayname)
    ("prefix" . prefix)
    ("suffix" . suffix)
    ("pronouns" . pronouns)
    ("bio" . bio)
    ("dob" . dob)
    ("dateOfDeath" . dateofdeath)
    ("age" . age)
    ("gender" . gender)
    ("nationality" . nationality)
    ("citizenship" . citizenship)
    ("occupation" . occupation)
    ("employer" . employer)
    ("education" . education)
    ("skills" . skills)
    ("interests" . interests)
    ("region" . region)
    ("addresses" . addresses)
    ("emails" . emails)
    ("phones" . phones)
    ("accounts" . accounts)
    ("images" . images)
    ("identifiers" . identifiers)
    ("misc" . misc)
    ("etype" . etype)
    ("eid" . eid)
  ))

(defstruct person-identifier
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (person nil)
  (scheme nil)
  (value nil)
  (normalizedvalue nil)
  (issuer nil)
  (primary nil)
  (sensitive nil)
  (sourcedocument nil)
)
(defparameter +person-identifier-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("person" . person)
    ("scheme" . scheme)
    ("value" . value)
    ("normalizedValue" . normalizedvalue)
    ("issuer" . issuer)
    ("primary" . primary)
    ("sensitive" . sensitive)
    ("sourceDocument" . sourcedocument)
  ))

(defstruct org
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (reg nil)
  (registrationnumbers nil)
  (name nil)
  (legalname nil)
  (alternatenames nil)
  (bio nil)
  (description nil)
  (organizationtype nil)
  (industry nil)
  (foundeddate nil)
  (dissolveddate nil)
  (status nil)
  (country nil)
  (jurisdictions nil)
  (headquarters nil)
  (addresses nil)
  (website nil)
  (domains nil)
  (emails nil)
  (phones nil)
  (parentorg nil)
  (subsidiaries nil)
  (officers nil)
  (employees nil)
  (owners nil)
  (beneficialowners nil)
  (identifiers nil)
  (etype nil)
  (eid nil)
)
(defparameter +org-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("reg" . reg)
    ("registrationNumbers" . registrationnumbers)
    ("name" . name)
    ("legalName" . legalname)
    ("alternateNames" . alternatenames)
    ("bio" . bio)
    ("description" . description)
    ("organizationType" . organizationtype)
    ("industry" . industry)
    ("foundedDate" . foundeddate)
    ("dissolvedDate" . dissolveddate)
    ("status" . status)
    ("country" . country)
    ("jurisdictions" . jurisdictions)
    ("headquarters" . headquarters)
    ("addresses" . addresses)
    ("website" . website)
    ("domains" . domains)
    ("emails" . emails)
    ("phones" . phones)
    ("parentOrg" . parentorg)
    ("subsidiaries" . subsidiaries)
    ("officers" . officers)
    ("employees" . employees)
    ("owners" . owners)
    ("beneficialOwners" . beneficialowners)
    ("identifiers" . identifiers)
    ("etype" . etype)
    ("eid" . eid)
  ))

(defstruct relation
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (source nil)
  (destination nil)
  (predicate nil)
  (direction nil)
  (inversepredicate nil)
  (note nil)
  (evidence nil)
  (weight nil)
  (validat nil)
  (endedat nil)
)
(defparameter +relation-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("source" . source)
    ("destination" . destination)
    ("predicate" . predicate)
    ("direction" . direction)
    ("inversePredicate" . inversepredicate)
    ("note" . note)
    ("evidence" . evidence)
    ("weight" . weight)
    ("validAt" . validat)
    ("endedAt" . endedat)
  ))

(defstruct domain
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (unicodename nil)
  (punycodename nil)
  (recordtype nil)
  (record nil)
  (resolvedaddresses nil)
  (dnsrecords nil)
  (nameservers nil)
  (mxrecords nil)
  (txtrecords nil)
  (registrar nil)
  (registrant nil)
  (whois nil)
  (registeredat nil)
  (renewedat nil)
  (registryexpiresat nil)
  (dnssec nil)
  (statuscodes nil)
)
(defparameter +domain-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("unicodeName" . unicodename)
    ("punycodeName" . punycodename)
    ("recordType" . recordtype)
    ("record" . record)
    ("resolvedAddresses" . resolvedaddresses)
    ("dnsRecords" . dnsrecords)
    ("nameservers" . nameservers)
    ("mxRecords" . mxrecords)
    ("txtRecords" . txtrecords)
    ("registrar" . registrar)
    ("registrant" . registrant)
    ("whois" . whois)
    ("registeredAt" . registeredat)
    ("renewedAt" . renewedat)
    ("registryExpiresAt" . registryexpiresat)
    ("dnssec" . dnssec)
    ("statusCodes" . statuscodes)
  ))

(defstruct service
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (host nil)
  (port nil)
  (transport nil)
  (name nil)
  (product nil)
  (vendor nil)
  (version nil)
  (protocol nil)
  (scheme nil)
  (banner nil)
  (state nil)
  (tls nil)
  (tlscertificate nil)
  (cpe nil)
  (fingerprints nil)
  (firstopenat nil)
  (lastopenat nil)
)
(defparameter +service-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("host" . host)
    ("port" . port)
    ("transport" . transport)
    ("name" . name)
    ("product" . product)
    ("vendor" . vendor)
    ("version" . version)
    ("protocol" . protocol)
    ("scheme" . scheme)
    ("banner" . banner)
    ("state" . state)
    ("tls" . tls)
    ("tlsCertificate" . tlscertificate)
    ("cpe" . cpe)
    ("fingerprints" . fingerprints)
    ("firstOpenAt" . firstopenat)
    ("lastOpenAt" . lastopenat)
  ))

(defstruct port
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (number nil)
  (transport nil)
  (protocol nil)
  (service nil)
  (state nil)
  (reason nil)
  (banner nil)
  (host nil)
  (firstopenat nil)
  (lastopenat nil)
)
(defparameter +port-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("number" . number)
    ("transport" . transport)
    ("protocol" . protocol)
    ("service" . service)
    ("state" . state)
    ("reason" . reason)
    ("banner" . banner)
    ("host" . host)
    ("firstOpenAt" . firstopenat)
    ("lastOpenAt" . lastopenat)
  ))

(defstruct network
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (org nil)
  (subnet nil)
  (asn nil)
  (asnname nil)
  (rir nil)
  (country nil)
  (netname nil)
  (description nil)
  (announcedprefixes nil)
  (upstreams nil)
  (peers nil)
)
(defparameter +network-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("org" . org)
    ("subnet" . subnet)
    ("asn" . asn)
    ("asnName" . asnname)
    ("rir" . rir)
    ("country" . country)
    ("netname" . netname)
    ("description" . description)
    ("announcedPrefixes" . announcedprefixes)
    ("upstreams" . upstreams)
    ("peers" . peers)
  ))

(defstruct asn
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (number nil)
  (name nil)
  (org nil)
  (country nil)
  (rir nil)
  (registry nil)
  (prefixes nil)
  (upstreams nil)
  (peers nil)
)
(defparameter +asn-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("number" . number)
    ("name" . name)
    ("org" . org)
    ("country" . country)
    ("rir" . rir)
    ("registry" . registry)
    ("prefixes" . prefixes)
    ("upstreams" . upstreams)
    ("peers" . peers)
  ))

(defstruct host
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (hostname nil)
  (hostnames nil)
  (ip nil)
  (ipversion nil)
  (mac nil)
  (os nil)
  (osversion nil)
  (devicetype nil)
  (vendor nil)
  (network nil)
  (asn nil)
  (geo nil)
  (ports nil)
  (services nil)
  (domains nil)
  (certificates nil)
  (cloud nil)
  (virtualization nil)
  (alive nil)
  (lastprobedat nil)
)
(defparameter +host-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("hostname" . hostname)
    ("hostnames" . hostnames)
    ("ip" . ip)
    ("ipVersion" . ipversion)
    ("mac" . mac)
    ("os" . os)
    ("osVersion" . osversion)
    ("deviceType" . devicetype)
    ("vendor" . vendor)
    ("network" . network)
    ("asn" . asn)
    ("geo" . geo)
    ("ports" . ports)
    ("services" . services)
    ("domains" . domains)
    ("certificates" . certificates)
    ("cloud" . cloud)
    ("virtualization" . virtualization)
    ("alive" . alive)
    ("lastProbedAt" . lastprobedat)
  ))

(defstruct url
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (url nil)
  (scheme nil)
  (username nil)
  (host nil)
  (port nil)
  (path nil)
  (query nil)
  (fragment nil)
  (canonicalurl nil)
  (finalurl nil)
  (statuscode nil)
  (method nil)
  (requestheaders nil)
  (responseheaders nil)
  (content nil)
  (contenttitle nil)
  (contentlength nil)
  (technologies nil)
  (redirectchain nil)
  (screenshot nil)
  (fetchedat nil)
)
(defparameter +url-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("url" . url)
    ("scheme" . scheme)
    ("username" . username)
    ("host" . host)
    ("port" . port)
    ("path" . path)
    ("query" . query)
    ("fragment" . fragment)
    ("canonicalUrl" . canonicalurl)
    ("finalUrl" . finalurl)
    ("statusCode" . statuscode)
    ("method" . method)
    ("requestHeaders" . requestheaders)
    ("responseHeaders" . responseheaders)
    ("content" . content)
    ("contentTitle" . contenttitle)
    ("contentLength" . contentlength)
    ("technologies" . technologies)
    ("redirectChain" . redirectchain)
    ("screenshot" . screenshot)
    ("fetchedAt" . fetchedat)
  ))

(defstruct breach
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (total nil)
  (description nil)
  (url nil)
  (breachedat nil)
  (publishedat nil)
  (dataclasses nil)
  (affectedorganizations nil)
  (affectedidentifiers nil)
  (verified nil)
  (sensitive nil)
)
(defparameter +breach-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("total" . total)
    ("description" . description)
    ("url" . url)
    ("breachedAt" . breachedat)
    ("publishedAt" . publishedat)
    ("dataClasses" . dataclasses)
    ("affectedOrganizations" . affectedorganizations)
    ("affectedIdentifiers" . affectedidentifiers)
    ("verified" . verified)
    ("sensitive" . sensitive)
  ))

(defstruct email
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (address nil)
  (user nil)
  (domain nil)
  (displayname nil)
  (password nil)
  (passwordhash nil)
  (hashtype nil)
  (breaches nil)
  (deliverable nil)
  (disposable nil)
  (roleaccount nil)
  (catchall nil)
  (mxvalid nil)
  (provider nil)
  (lastverifiedat nil)
)
(defparameter +email-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("address" . address)
    ("user" . user)
    ("domain" . domain)
    ("displayName" . displayname)
    ("password" . password)
    ("passwordHash" . passwordhash)
    ("hashType" . hashtype)
    ("breaches" . breaches)
    ("deliverable" . deliverable)
    ("disposable" . disposable)
    ("roleAccount" . roleaccount)
    ("catchAll" . catchall)
    ("mxValid" . mxvalid)
    ("provider" . provider)
    ("lastVerifiedAt" . lastverifiedat)
  ))

(defstruct email-message
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (messageid nil)
  (threadid nil)
  (subject nil)
  (body nil)
  (bodyhtml nil)
  (to nil)
  (from nil)
  (replyto nil)
  (cc nil)
  (bcc nil)
  (headers nil)
  (attachments nil)
  (sentat nil)
  (receivedat nil)
  (inreplyto nil)
  (references nil)
  (mailbox nil)
  (flags nil)
)
(defparameter +email-message-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("messageId" . messageid)
    ("threadId" . threadid)
    ("subject" . subject)
    ("body" . body)
    ("bodyHtml" . bodyhtml)
    ("to" . to)
    ("from" . from)
    ("replyTo" . replyto)
    ("cc" . cc)
    ("bcc" . bcc)
    ("headers" . headers)
    ("attachments" . attachments)
    ("sentAt" . sentat)
    ("receivedAt" . receivedat)
    ("inReplyTo" . inreplyto)
    ("references" . references)
    ("mailbox" . mailbox)
    ("flags" . flags)
  ))

(defstruct user
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (url nil)
  (username nil)
  (displayname nil)
  (name nil)
  (platform nil)
  (platformuserid nil)
  (bio nil)
  (avatar nil)
  (banner nil)
  (createdonplatformat nil)
  (followerscount nil)
  (followingcount nil)
  (postcount nil)
  (verified nil)
  (private nil)
  (suspended nil)
  (location nil)
  (website nil)
  (emails nil)
  (phones nil)
  (misc nil)
)
(defparameter +user-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("url" . url)
    ("username" . username)
    ("displayName" . displayname)
    ("name" . name)
    ("platform" . platform)
    ("platformUserId" . platformuserid)
    ("bio" . bio)
    ("avatar" . avatar)
    ("banner" . banner)
    ("createdOnPlatformAt" . createdonplatformat)
    ("followersCount" . followerscount)
    ("followingCount" . followingcount)
    ("postCount" . postcount)
    ("verified" . verified)
    ("private" . private)
    ("suspended" . suspended)
    ("location" . location)
    ("website" . website)
    ("emails" . emails)
    ("phones" . phones)
    ("misc" . misc)
  ))

(defstruct phone
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (number nil)
  (e164 nil)
  (nationalnumber nil)
  (extension nil)
  (carrier nil)
  (status nil)
  (phonetype nil)
  (linetype nil)
  (valid nil)
  (reachable nil)
  (ported nil)
  (location nil)
  (lastverifiedat nil)
)
(defparameter +phone-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("number" . number)
    ("e164" . e164)
    ("nationalNumber" . nationalnumber)
    ("extension" . extension)
    ("carrier" . carrier)
    ("status" . status)
    ("phoneType" . phonetype)
    ("lineType" . linetype)
    ("valid" . valid)
    ("reachable" . reachable)
    ("ported" . ported)
    ("location" . location)
    ("lastVerifiedAt" . lastverifiedat)
  ))

(defstruct geo
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (geometrytype nil)
  (coordinatereferencesystem nil)
  (boundingbox nil)
  (accuracymeters nil)
  (geohash nil)
  (placename nil)
  (placekind nil)
)
(defparameter +geo-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("geometryType" . geometrytype)
    ("coordinateReferenceSystem" . coordinatereferencesystem)
    ("boundingBox" . boundingbox)
    ("accuracyMeters" . accuracymeters)
    ("geohash" . geohash)
    ("placeName" . placename)
    ("placeKind" . placekind)
  ))

(defstruct geo-point
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (geometrytype nil)
  (coordinatereferencesystem nil)
  (boundingbox nil)
  (accuracymeters nil)
  (geohash nil)
  (placename nil)
  (placekind nil)
  (longitude nil)
  (latitude nil)
  (altitudemeters nil)
)
(defparameter +geo-point-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("geometryType" . geometrytype)
    ("coordinateReferenceSystem" . coordinatereferencesystem)
    ("boundingBox" . boundingbox)
    ("accuracyMeters" . accuracymeters)
    ("geohash" . geohash)
    ("placeName" . placename)
    ("placeKind" . placekind)
    ("longitude" . longitude)
    ("latitude" . latitude)
    ("altitudeMeters" . altitudemeters)
  ))

(defstruct geo-line-string
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (geometrytype nil)
  (coordinatereferencesystem nil)
  (boundingbox nil)
  (accuracymeters nil)
  (geohash nil)
  (placename nil)
  (placekind nil)
  (points nil)
)
(defparameter +geo-line-string-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("geometryType" . geometrytype)
    ("coordinateReferenceSystem" . coordinatereferencesystem)
    ("boundingBox" . boundingbox)
    ("accuracyMeters" . accuracymeters)
    ("geohash" . geohash)
    ("placeName" . placename)
    ("placeKind" . placekind)
    ("points" . points)
  ))

(defstruct geo-polygon
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (geometrytype nil)
  (coordinatereferencesystem nil)
  (boundingbox nil)
  (accuracymeters nil)
  (geohash nil)
  (placename nil)
  (placekind nil)
  (rings nil)
)
(defparameter +geo-polygon-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("geometryType" . geometrytype)
    ("coordinateReferenceSystem" . coordinatereferencesystem)
    ("boundingBox" . boundingbox)
    ("accuracyMeters" . accuracymeters)
    ("geohash" . geohash)
    ("placeName" . placename)
    ("placeKind" . placekind)
    ("rings" . rings)
  ))

(defstruct geo-multi-point
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (geometrytype nil)
  (coordinatereferencesystem nil)
  (boundingbox nil)
  (accuracymeters nil)
  (geohash nil)
  (placename nil)
  (placekind nil)
  (points nil)
)
(defparameter +geo-multi-point-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("geometryType" . geometrytype)
    ("coordinateReferenceSystem" . coordinatereferencesystem)
    ("boundingBox" . boundingbox)
    ("accuracyMeters" . accuracymeters)
    ("geohash" . geohash)
    ("placeName" . placename)
    ("placeKind" . placekind)
    ("points" . points)
  ))

(defstruct geo-multi-line-string
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (geometrytype nil)
  (coordinatereferencesystem nil)
  (boundingbox nil)
  (accuracymeters nil)
  (geohash nil)
  (placename nil)
  (placekind nil)
  (lines nil)
)
(defparameter +geo-multi-line-string-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("geometryType" . geometrytype)
    ("coordinateReferenceSystem" . coordinatereferencesystem)
    ("boundingBox" . boundingbox)
    ("accuracyMeters" . accuracymeters)
    ("geohash" . geohash)
    ("placeName" . placename)
    ("placeKind" . placekind)
    ("lines" . lines)
  ))

(defstruct geo-multi-polygon
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (geometrytype nil)
  (coordinatereferencesystem nil)
  (boundingbox nil)
  (accuracymeters nil)
  (geohash nil)
  (placename nil)
  (placekind nil)
  (polygons nil)
)
(defparameter +geo-multi-polygon-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("geometryType" . geometrytype)
    ("coordinateReferenceSystem" . coordinatereferencesystem)
    ("boundingBox" . boundingbox)
    ("accuracyMeters" . accuracymeters)
    ("geohash" . geohash)
    ("placeName" . placename)
    ("placeKind" . placekind)
    ("polygons" . polygons)
  ))

(defstruct geo-geometry-collection
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (geometrytype nil)
  (coordinatereferencesystem nil)
  (boundingbox nil)
  (accuracymeters nil)
  (geohash nil)
  (placename nil)
  (placekind nil)
  (geometries nil)
)
(defparameter +geo-geometry-collection-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("geometryType" . geometrytype)
    ("coordinateReferenceSystem" . coordinatereferencesystem)
    ("boundingBox" . boundingbox)
    ("accuracyMeters" . accuracymeters)
    ("geohash" . geohash)
    ("placeName" . placename)
    ("placeKind" . placekind)
    ("geometries" . geometries)
  ))

(defstruct location
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (geometry nil)
  (address nil)
  (locationtype nil)
)
(defparameter +location-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("geometry" . geometry)
    ("address" . address)
    ("locationType" . locationtype)
  ))

(defstruct address
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (formatted nil)
  (street nil)
  (street2 nil)
  (unit nil)
  (city nil)
  (county nil)
  (state nil)
  (postal nil)
  (country nil)
  (addresstype nil)
  (pobox nil)
  (building nil)
  (floor nil)
  (deliverypoint nil)
  (geometry nil)
  (validated nil)
  (validationprovider nil)
)
(defparameter +address-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("formatted" . formatted)
    ("street" . street)
    ("street2" . street2)
    ("unit" . unit)
    ("city" . city)
    ("county" . county)
    ("state" . state)
    ("postal" . postal)
    ("country" . country)
    ("addressType" . addresstype)
    ("poBox" . pobox)
    ("building" . building)
    ("floor" . floor)
    ("deliveryPoint" . deliverypoint)
    ("geometry" . geometry)
    ("validated" . validated)
    ("validationProvider" . validationprovider)
  ))

(defstruct mission
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (objective nil)
  (state nil)
  (scope nil)
  (area nil)
  (route nil)
  (targets nil)
  (geofences nil)
  (assignedactors nil)
  (parentmission nil)
  (startsat nil)
  (endsat nil)
  (outputdataset nil)
  (constraints nil)
  (budget nil)
  (statusreason nil)
)
(defparameter +mission-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("objective" . objective)
    ("state" . state)
    ("scope" . scope)
    ("area" . area)
    ("route" . route)
    ("targets" . targets)
    ("geofences" . geofences)
    ("assignedActors" . assignedactors)
    ("parentMission" . parentmission)
    ("startsAt" . startsat)
    ("endsAt" . endsat)
    ("outputDataset" . outputdataset)
    ("constraints" . constraints)
    ("budget" . budget)
    ("statusReason" . statusreason)
  ))

(defstruct mission-target
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (mission nil)
  (subject nil)
  (state nil)
  (objective nil)
  (location nil)
  (geofence nil)
  (routestop nil)
  (priority nil)
  (assignedactor nil)
  (requiredcapabilities nil)
  (notbefore nil)
  (deadline nil)
  (options nil)
  (resultrefs nil)
)
(defparameter +mission-target-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("mission" . mission)
    ("subject" . subject)
    ("state" . state)
    ("objective" . objective)
    ("location" . location)
    ("geofence" . geofence)
    ("routeStop" . routestop)
    ("priority" . priority)
    ("assignedActor" . assignedactor)
    ("requiredCapabilities" . requiredcapabilities)
    ("notBefore" . notbefore)
    ("deadline" . deadline)
    ("options" . options)
    ("resultRefs" . resultrefs)
  ))

(defstruct route
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (geometry nil)
  (origin nil)
  (destination nil)
  (waypoints nil)
  (mode nil)
  (distancemeters nil)
  (estimateddurationseconds nil)
  (actualdurationseconds nil)
  (plannedat nil)
  (startedat nil)
  (endedat nil)
  (routingprovider nil)
  (constraints nil)
)
(defparameter +route-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("geometry" . geometry)
    ("origin" . origin)
    ("destination" . destination)
    ("waypoints" . waypoints)
    ("mode" . mode)
    ("distanceMeters" . distancemeters)
    ("estimatedDurationSeconds" . estimateddurationseconds)
    ("actualDurationSeconds" . actualdurationseconds)
    ("plannedAt" . plannedat)
    ("startedAt" . startedat)
    ("endedAt" . endedat)
    ("routingProvider" . routingprovider)
    ("constraints" . constraints)
  ))

(defstruct geofence
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (geometry nil)
  (transitions nil)
  (mission nil)
  (subjects nil)
  (activefrom nil)
  (activeuntil nil)
  (dwellseconds nil)
  (enabled nil)
  (policy nil)
)
(defparameter +geofence-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("geometry" . geometry)
    ("transitions" . transitions)
    ("mission" . mission)
    ("subjects" . subjects)
    ("activeFrom" . activefrom)
    ("activeUntil" . activeuntil)
    ("dwellSeconds" . dwellseconds)
    ("enabled" . enabled)
    ("policy" . policy)
  ))

(defstruct encounter
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (participants nil)
  (kind nil)
  (location nil)
  (geometry nil)
  (startedat nil)
  (endedat nil)
  (minimumdistancemeters nil)
  (observations nil)
  (evidence nil)
  (sourcerunids nil)
)
(defparameter +encounter-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("participants" . participants)
    ("kind" . kind)
    ("location" . location)
    ("geometry" . geometry)
    ("startedAt" . startedat)
    ("endedAt" . endedat)
    ("minimumDistanceMeters" . minimumdistancemeters)
    ("observations" . observations)
    ("evidence" . evidence)
    ("sourceRunIds" . sourcerunids)
  ))

(defstruct map-layer
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (kind nil)
  (sourcedataset nil)
  (query nil)
  (features nil)
  (style nil)
  (visible nil)
  (minimumzoom nil)
  (maximumzoom nil)
  (readonly nil)
)
(defparameter +map-layer-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("kind" . kind)
    ("sourceDataset" . sourcedataset)
    ("query" . query)
    ("features" . features)
    ("style" . style)
    ("visible" . visible)
    ("minimumZoom" . minimumzoom)
    ("maximumZoom" . maximumzoom)
    ("readOnly" . readonly)
  ))

(defstruct message
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (message nil)
  (platform nil)
  (user nil)
  (isreply nil)
  (media nil)
  (messageid nil)
  (replyto nil)
  (threadid nil)
  (group nil)
  (channel nil)
  (mentions nil)
  (reactions nil)
  (edited nil)
  (editedat nil)
  (sentat nil)
  (deletedat nil)
)
(defparameter +message-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("message" . message)
    ("platform" . platform)
    ("user" . user)
    ("isReply" . isreply)
    ("media" . media)
    ("messageId" . messageid)
    ("replyTo" . replyto)
    ("threadId" . threadid)
    ("group" . group)
    ("channel" . channel)
    ("mentions" . mentions)
    ("reactions" . reactions)
    ("edited" . edited)
    ("editedAt" . editedat)
    ("sentAt" . sentat)
    ("deletedAt" . deletedat)
  ))

(defstruct socialmpost
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (content nil)
  (user nil)
  (platform nil)
  (platformpostid nil)
  (replies nil)
  (media nil)
  (replycount nil)
  (repostcount nil)
  (likecount nil)
  (viewcount nil)
  (quotecount nil)
  (bookmarkcount nil)
  (url nil)
  (links nil)
  (hashtags nil)
  (mentions nil)
  (title nil)
  (group nil)
  (replyto nil)
  (conversationid nil)
  (publishedat nil)
  (editedat nil)
  (sensitive nil)
)
(defparameter +socialmpost-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("content" . content)
    ("user" . user)
    ("platform" . platform)
    ("platformPostId" . platformpostid)
    ("replies" . replies)
    ("media" . media)
    ("replyCount" . replycount)
    ("repostCount" . repostcount)
    ("likeCount" . likecount)
    ("viewCount" . viewcount)
    ("quoteCount" . quotecount)
    ("bookmarkCount" . bookmarkcount)
    ("url" . url)
    ("links" . links)
    ("hashtags" . hashtags)
    ("mentions" . mentions)
    ("title" . title)
    ("group" . group)
    ("replyTo" . replyto)
    ("conversationId" . conversationid)
    ("publishedAt" . publishedat)
    ("editedAt" . editedat)
    ("sensitive" . sensitive)
  ))

(defstruct operation-condition
  (conditionid nil)
  (kind nil)
  (predicate nil)
  (subject nil)
  (object nil)
  (expression nil)
  (required nil)
  (metadata nil)
)
(defparameter +operation-condition-wire-fields+
  '(
    ("conditionId" . conditionid)
    ("kind" . kind)
    ("predicate" . predicate)
    ("subject" . subject)
    ("object" . object)
    ("expression" . expression)
    ("required" . required)
    ("metadata" . metadata)
  ))

(defstruct operation-target-policy
  (alloweddtypes nil)
  (allowedtargettypes nil)
  (allowedroles nil)
  (selectors nil)
)
(defparameter +operation-target-policy-wire-fields+
  '(
    ("allowedDtypes" . alloweddtypes)
    ("allowedTargetTypes" . allowedtargettypes)
    ("allowedRoles" . allowedroles)
    ("selectors" . selectors)
  ))

(defstruct operation-target-bindings
  (primary nil)
  (supporting nil)
  (derived nil)
  (excluded nil)
)
(defparameter +operation-target-bindings-wire-fields+
  '(
    ("primary" . primary)
    ("supporting" . supporting)
    ("derived" . derived)
    ("excluded" . excluded)
  ))

(defstruct operation-dataset-binding
  (bindingid nil)
  (dataset nil)
  (role nil)
  (access nil)
  (phases nil)
  (purpose nil)
)
(defparameter +operation-dataset-binding-wire-fields+
  '(
    ("bindingId" . bindingid)
    ("dataset" . dataset)
    ("role" . role)
    ("access" . access)
    ("phases" . phases)
    ("purpose" . purpose)
  ))

(defstruct operation-capability-gap
  (capabilityid nil)
  (category nil)
  (description nil)
  (requiredby nil)
  (blocking nil)
  (status nil)
  (capabilityref nil)
  (resolutionref nil)
  (owner nil)
  (metadata nil)
)
(defparameter +operation-capability-gap-wire-fields+
  '(
    ("capabilityId" . capabilityid)
    ("category" . category)
    ("description" . description)
    ("requiredBy" . requiredby)
    ("blocking" . blocking)
    ("status" . status)
    ("capabilityRef" . capabilityref)
    ("resolutionRef" . resolutionref)
    ("owner" . owner)
    ("metadata" . metadata)
  ))

(defstruct operation-assignment
  (assignmentid nil)
  (agentid nil)
  (actorid nil)
  (phaseids nil)
  (role nil)
  (status nil)
  (metadata nil)
)
(defparameter +operation-assignment-wire-fields+
  '(
    ("assignmentId" . assignmentid)
    ("agentId" . agentid)
    ("actorId" . actorid)
    ("phaseIds" . phaseids)
    ("role" . role)
    ("status" . status)
    ("metadata" . metadata)
  ))

(defstruct operation-post-action
  (actionid nil)
  (actiontype nil)
  (condition nil)
  (targetids nil)
  (datasetbindingids nil)
  (status nil)
  (config nil)
)
(defparameter +operation-post-action-wire-fields+
  '(
    ("actionId" . actionid)
    ("actionType" . actiontype)
    ("condition" . condition)
    ("targetIds" . targetids)
    ("datasetBindingIds" . datasetbindingids)
    ("status" . status)
    ("config" . config)
  ))

(defstruct operation-phase
  (phaseid nil)
  (title nil)
  (objective nil)
  (state nil)
  (dependson nil)
  (entryconditions nil)
  (exitconditions nil)
  (inscope nil)
  (outofscope nil)
  (targetpolicy nil)
  (targetids nil)
  (datasetbindingids nil)
  (requiredcapabilityids nil)
  (deliverableids nil)
  (completionevidence nil)
)
(defparameter +operation-phase-wire-fields+
  '(
    ("phaseId" . phaseid)
    ("title" . title)
    ("objective" . objective)
    ("state" . state)
    ("dependsOn" . dependson)
    ("entryConditions" . entryconditions)
    ("exitConditions" . exitconditions)
    ("inScope" . inscope)
    ("outOfScope" . outofscope)
    ("targetPolicy" . targetpolicy)
    ("targetIds" . targetids)
    ("datasetBindingIds" . datasetbindingids)
    ("requiredCapabilityIds" . requiredcapabilityids)
    ("deliverableIds" . deliverableids)
    ("completionEvidence" . completionevidence)
  ))

(defstruct operation
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (mission nil)
  (objectives nil)
  (status nil)
  (inscope nil)
  (outofscope nil)
  (targetpolicy nil)
  (targets nil)
  (phases nil)
  (datasets nil)
  (capabilitygaps nil)
  (assignments nil)
  (postactions nil)
)
(defparameter +operation-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("mission" . mission)
    ("objectives" . objectives)
    ("status" . status)
    ("inScope" . inscope)
    ("outOfScope" . outofscope)
    ("targetPolicy" . targetpolicy)
    ("targets" . targets)
    ("phases" . phases)
    ("datasets" . datasets)
    ("capabilityGaps" . capabilitygaps)
    ("assignments" . assignments)
    ("postActions" . postactions)
  ))

(defstruct investigation-target
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (actor nil)
  (target nil)
  (targetid nil)
  (targettype nil)
  (query nil)
  (researchquestion nil)
  (hypotheses nil)
  (objectives nil)
  (inscope nil)
  (outofscope nil)
  (scopetype nil)
  (seedids nil)
  (sourceids nil)
  (requireddtypes nil)
  (preferredsources nil)
  (excludedsources nil)
  (delay nil)
  (recurring nil)
  (recurrence nil)
  (options nil)
  (depth nil)
  (maxdepth nil)
  (breadth nil)
  (priority nil)
  (score nil)
  (selectionreason nil)
  (status nil)
  (nextrunat nil)
)
(defparameter +investigation-target-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("actor" . actor)
    ("target" . target)
    ("targetId" . targetid)
    ("targetType" . targettype)
    ("query" . query)
    ("researchQuestion" . researchquestion)
    ("hypotheses" . hypotheses)
    ("objectives" . objectives)
    ("inScope" . inscope)
    ("outOfScope" . outofscope)
    ("scopeType" . scopetype)
    ("seedIds" . seedids)
    ("sourceIds" . sourceids)
    ("requiredDtypes" . requireddtypes)
    ("preferredSources" . preferredsources)
    ("excludedSources" . excludedsources)
    ("delay" . delay)
    ("recurring" . recurring)
    ("recurrence" . recurrence)
    ("options" . options)
    ("depth" . depth)
    ("maxDepth" . maxdepth)
    ("breadth" . breadth)
    ("priority" . priority)
    ("score" . score)
    ("selectionReason" . selectionreason)
    ("status" . status)
    ("nextRunAt" . nextrunat)
  ))

(defstruct asset-identifier-records-item
  (scheme nil)
  (value nil)
  (issuer nil)
  (jurisdiction nil)
  (canonical nil)
  (confidence nil)
  (validfrom nil)
  (validto nil)
  (url nil)
  (notes nil)
)
(defparameter +asset-identifier-records-item-wire-fields+
  '(
    ("scheme" . scheme)
    ("value" . value)
    ("issuer" . issuer)
    ("jurisdiction" . jurisdiction)
    ("canonical" . canonical)
    ("confidence" . confidence)
    ("validFrom" . validfrom)
    ("validTo" . validto)
    ("url" . url)
    ("notes" . notes)
  ))

(defstruct asset-valuation-records-item
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +asset-valuation-records-item-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct asset-external-ids-item
  (scheme nil)
  (value nil)
  (issuer nil)
  (jurisdiction nil)
  (canonical nil)
  (confidence nil)
  (validfrom nil)
  (validto nil)
  (url nil)
  (notes nil)
)
(defparameter +asset-external-ids-item-wire-fields+
  '(
    ("scheme" . scheme)
    ("value" . value)
    ("issuer" . issuer)
    ("jurisdiction" . jurisdiction)
    ("canonical" . canonical)
    ("confidence" . confidence)
    ("validFrom" . validfrom)
    ("validTo" . validto)
    ("url" . url)
    ("notes" . notes)
  ))

(defstruct campaign-finance-amount-record
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +campaign-finance-amount-record-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct campaign-finance-aggregate-amount
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +campaign-finance-aggregate-amount-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct campaign-finance-source-system-ids-item
  (scheme nil)
  (value nil)
  (issuer nil)
  (jurisdiction nil)
  (canonical nil)
  (confidence nil)
  (validfrom nil)
  (validto nil)
  (url nil)
  (notes nil)
)
(defparameter +campaign-finance-source-system-ids-item-wire-fields+
  '(
    ("scheme" . scheme)
    ("value" . value)
    ("issuer" . issuer)
    ("jurisdiction" . jurisdiction)
    ("canonical" . canonical)
    ("confidence" . confidence)
    ("validFrom" . validfrom)
    ("validTo" . validto)
    ("url" . url)
    ("notes" . notes)
  ))

(defstruct contract-funding-records-item
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +contract-funding-records-item-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct contract-source-system-ids-item
  (scheme nil)
  (value nil)
  (issuer nil)
  (jurisdiction nil)
  (canonical nil)
  (confidence nil)
  (validfrom nil)
  (validto nil)
  (url nil)
  (notes nil)
)
(defparameter +contract-source-system-ids-item-wire-fields+
  '(
    ("scheme" . scheme)
    ("value" . value)
    ("issuer" . issuer)
    ("jurisdiction" . jurisdiction)
    ("canonical" . canonical)
    ("confidence" . confidence)
    ("validFrom" . validfrom)
    ("validTo" . validto)
    ("url" . url)
    ("notes" . notes)
  ))

(defstruct employment-compensation-records-item
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +employment-compensation-records-item-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct entity-identity-keys-item
  (scheme nil)
  (value nil)
  (issuer nil)
  (jurisdiction nil)
  (canonical nil)
  (confidence nil)
  (validfrom nil)
  (validto nil)
  (url nil)
  (notes nil)
)
(defparameter +entity-identity-keys-item-wire-fields+
  '(
    ("scheme" . scheme)
    ("value" . value)
    ("issuer" . issuer)
    ("jurisdiction" . jurisdiction)
    ("canonical" . canonical)
    ("confidence" . confidence)
    ("validFrom" . validfrom)
    ("validTo" . validto)
    ("url" . url)
    ("notes" . notes)
  ))

(defstruct entity-external-ids-item
  (scheme nil)
  (value nil)
  (issuer nil)
  (jurisdiction nil)
  (canonical nil)
  (confidence nil)
  (validfrom nil)
  (validto nil)
  (url nil)
  (notes nil)
)
(defparameter +entity-external-ids-item-wire-fields+
  '(
    ("scheme" . scheme)
    ("value" . value)
    ("issuer" . issuer)
    ("jurisdiction" . jurisdiction)
    ("canonical" . canonical)
    ("confidence" . confidence)
    ("validFrom" . validfrom)
    ("validTo" . validto)
    ("url" . url)
    ("notes" . notes)
  ))

(defstruct financial-observation-amount-record
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +financial-observation-amount-record-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct grant-funding-records-item
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +grant-funding-records-item-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct grant-matching-amount
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +grant-matching-amount-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct lobbying-filing-amount-records-item
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +lobbying-filing-amount-records-item-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct ownership-value-record
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +ownership-value-record-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct procurement-funding-records-item
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +procurement-funding-records-item-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct procurement-source-system-ids-item
  (scheme nil)
  (value nil)
  (issuer nil)
  (jurisdiction nil)
  (canonical nil)
  (confidence nil)
  (validfrom nil)
  (validto nil)
  (url nil)
  (notes nil)
)
(defparameter +procurement-source-system-ids-item-wire-fields+
  '(
    ("scheme" . scheme)
    ("value" . value)
    ("issuer" . issuer)
    ("jurisdiction" . jurisdiction)
    ("canonical" . canonical)
    ("confidence" . confidence)
    ("validFrom" . validfrom)
    ("validTo" . validto)
    ("url" . url)
    ("notes" . notes)
  ))

(defstruct product-pricing-records-item
  (amount nil)
  (currency nil)
  (basis nil)
  (asof nil)
  (notes nil)
)
(defparameter +product-pricing-records-item-wire-fields+
  '(
    ("amount" . amount)
    ("currency" . currency)
    ("basis" . basis)
    ("asOf" . asof)
    ("notes" . notes)
  ))

(defstruct product-external-ids-item
  (scheme nil)
  (value nil)
  (issuer nil)
  (jurisdiction nil)
  (canonical nil)
  (confidence nil)
  (validfrom nil)
  (validto nil)
  (url nil)
  (notes nil)
)
(defparameter +product-external-ids-item-wire-fields+
  '(
    ("scheme" . scheme)
    ("value" . value)
    ("issuer" . issuer)
    ("jurisdiction" . jurisdiction)
    ("canonical" . canonical)
    ("confidence" . confidence)
    ("validFrom" . validfrom)
    ("validTo" . validto)
    ("url" . url)
    ("notes" . notes)
  ))

(defstruct research-node-limits
  (maxdepth nil)
  (maxactorruns nil)
  (maxrequests nil)
  (maxelapsedms nil)
  (maxrepeatedstate nil)
  (maxcost nil)
  (currency nil)
)
(defparameter +research-node-limits-wire-fields+
  '(
    ("maxDepth" . maxdepth)
    ("maxActorRuns" . maxactorruns)
    ("maxRequests" . maxrequests)
    ("maxElapsedMs" . maxelapsedms)
    ("maxRepeatedState" . maxrepeatedstate)
    ("maxCost" . maxcost)
    ("currency" . currency)
  ))

(defstruct research-node-stop
  (whenactorqueueempty nil)
  (whennonewdocuments nil)
  (whenobjectivesatisfied nil)
  (haltonactorfailure nil)
)
(defparameter +research-node-stop-wire-fields+
  '(
    ("whenActorQueueEmpty" . whenactorqueueempty)
    ("whenNoNewDocuments" . whennonewdocuments)
    ("whenObjectiveSatisfied" . whenobjectivesatisfied)
    ("haltOnActorFailure" . haltonactorfailure)
  ))

(defstruct research-node-counters
  (depth nil)
  (actorruns nil)
  (requests nil)
  (repeatedstate nil)
  (elapsedms nil)
  (cost nil)
)
(defparameter +research-node-counters-wire-fields+
  '(
    ("depth" . depth)
    ("actorRuns" . actorruns)
    ("requests" . requests)
    ("repeatedState" . repeatedstate)
    ("elapsedMs" . elapsedms)
    ("cost" . cost)
  ))

(defstruct research-node-history-item
  (from nil)
  (to nil)
  (at nil)
  (message nil)
  (error nil)
  (actorid nil)
  (runid nil)
  (outputids nil)
  (artifactids nil)
)
(defparameter +research-node-history-item-wire-fields+
  '(
    ("from" . from)
    ("to" . to)
    ("at" . at)
    ("message" . message)
    ("error" . error)
    ("actorId" . actorid)
    ("runId" . runid)
    ("outputIds" . outputids)
    ("artifactIds" . artifactids)
  ))

(defstruct alert
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (ruleid nil)
  (triggereventid nil)
  (relatedalertids nil)
  (firsttriggeredat nil)
  (lasttriggeredat nil)
  (occurrencecount nil)
  (acknowledgementactions nil)
  (suppresseduntil nil)
  (resolvedat nil)
  (resolution nil)
  (alerttype nil)
  (subjectids nil)
  (condition nil)
  (threshold nil)
  (triggeredat nil)
  (severity nil)
  (acknowledgedby nil)
)
(defparameter +alert-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("ruleId" . ruleid)
    ("triggerEventId" . triggereventid)
    ("relatedAlertIds" . relatedalertids)
    ("firstTriggeredAt" . firsttriggeredat)
    ("lastTriggeredAt" . lasttriggeredat)
    ("occurrenceCount" . occurrencecount)
    ("acknowledgementActions" . acknowledgementactions)
    ("suppressedUntil" . suppresseduntil)
    ("resolvedAt" . resolvedat)
    ("resolution" . resolution)
    ("alertType" . alerttype)
    ("subjectIds" . subjectids)
    ("condition" . condition)
    ("threshold" . threshold)
    ("triggeredAt" . triggeredat)
    ("severity" . severity)
    ("acknowledgedBy" . acknowledgedby)
  ))

(defstruct analysis
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (hypotheses nil)
  (methodids nil)
  (claimids nil)
  (logic nil)
  (reasoningartifactids nil)
  (uncertaintysources nil)
  (dependencyids nil)
  (reviewids nil)
  (outputids nil)
  (question nil)
  (method nil)
  (framework nil)
  (scope nil)
  (inputids nil)
  (findingids nil)
  (findings nil)
  (conclusions nil)
  (recommendations nil)
  (counterarguments nil)
  (limitations nil)
  (unresolved nil)
  (payloadconfidence nil)
)
(defparameter +analysis-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("hypotheses" . hypotheses)
    ("methodIds" . methodids)
    ("claimIds" . claimids)
    ("logic" . logic)
    ("reasoningArtifactIds" . reasoningartifactids)
    ("uncertaintySources" . uncertaintysources)
    ("dependencyIds" . dependencyids)
    ("reviewIds" . reviewids)
    ("outputIds" . outputids)
    ("question" . question)
    ("method" . method)
    ("framework" . framework)
    ("scope" . scope)
    ("inputIds" . inputids)
    ("findingIds" . findingids)
    ("findings" . findings)
    ("conclusions" . conclusions)
    ("recommendations" . recommendations)
    ("counterarguments" . counterarguments)
    ("limitations" . limitations)
    ("unresolved" . unresolved)
    ("payloadConfidence" . payloadconfidence)
  ))

(defstruct asset
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (assetclass nil)
  (custodianids nil)
  (beneficialownerids nil)
  (identifierrecords nil)
  (valuationrecords nil)
  (acquiredat nil)
  (disposedat nil)
  (acquisitioneventid nil)
  (disposaleventid nil)
  (componentids nil)
  (etype nil)
  (eid nil)
  (name nil)
  (displayname nil)
  (legalname nil)
  (shortname nil)
  (formernames nil)
  (bio nil)
  (payloadjurisdiction nil)
  (country nil)
  (foundedat nil)
  (dissolvedat nil)
  (website nil)
  (imageurl nil)
  (logourl nil)
  (payloadexternalids nil)
  (contactids nil)
  (locationids nil)
  (assettype nil)
  (ownerids nil)
  (operatorids nil)
  (serialnumber nil)
  (registration nil)
  (value nil)
  (currency nil)
  (locationid nil)
)
(defparameter +asset-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("assetClass" . assetclass)
    ("custodianIds" . custodianids)
    ("beneficialOwnerIds" . beneficialownerids)
    ("identifierRecords" . identifierrecords)
    ("valuationRecords" . valuationrecords)
    ("acquiredAt" . acquiredat)
    ("disposedAt" . disposedat)
    ("acquisitionEventId" . acquisitioneventid)
    ("disposalEventId" . disposaleventid)
    ("componentIds" . componentids)
    ("etype" . etype)
    ("eid" . eid)
    ("name" . name)
    ("displayName" . displayname)
    ("legalName" . legalname)
    ("shortName" . shortname)
    ("formerNames" . formernames)
    ("bio" . bio)
    ("payloadJurisdiction" . payloadjurisdiction)
    ("country" . country)
    ("foundedAt" . foundedat)
    ("dissolvedAt" . dissolvedat)
    ("website" . website)
    ("imageUrl" . imageurl)
    ("logoUrl" . logourl)
    ("payloadExternalIds" . payloadexternalids)
    ("contactIds" . contactids)
    ("locationIds" . locationids)
    ("assetType" . assettype)
    ("ownerIds" . ownerids)
    ("operatorIds" . operatorids)
    ("serialNumber" . serialnumber)
    ("registration" . registration)
    ("value" . value)
    ("currency" . currency)
    ("locationId" . locationid)
  ))

(defstruct campaign-finance
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (transactionid nil)
  (committeeids nil)
  (donorrefs nil)
  (recipientrefs nil)
  (amountrecord nil)
  (transactiondate nil)
  (memoed nil)
  (memotext nil)
  (refundofid nil)
  (aggregateamount nil)
  (employer nil)
  (occupation nil)
  (sourcesystemids nil)
  (entityid nil)
  (observationtype nil)
  (amount nil)
  (currency nil)
  (valuetype nil)
  (periodstart nil)
  (periodend nil)
  (fiscalyear nil)
  (fiscalquarter nil)
  (reportedat nil)
  (counterpartyids nil)
  (instrument nil)
  (units nil)
  (unitprice nil)
  (percentage nil)
  (methodology nil)
  (qualifications nil)
  (committeeid nil)
  (donorid nil)
  (recipientid nil)
  (filingid nil)
  (contributiontype nil)
  (electioncycle nil)
)
(defparameter +campaign-finance-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("transactionId" . transactionid)
    ("committeeIds" . committeeids)
    ("donorRefs" . donorrefs)
    ("recipientRefs" . recipientrefs)
    ("amountRecord" . amountrecord)
    ("transactionDate" . transactiondate)
    ("memoed" . memoed)
    ("memoText" . memotext)
    ("refundOfId" . refundofid)
    ("aggregateAmount" . aggregateamount)
    ("employer" . employer)
    ("occupation" . occupation)
    ("sourceSystemIds" . sourcesystemids)
    ("entityId" . entityid)
    ("observationType" . observationtype)
    ("amount" . amount)
    ("currency" . currency)
    ("valueType" . valuetype)
    ("periodStart" . periodstart)
    ("periodEnd" . periodend)
    ("fiscalYear" . fiscalyear)
    ("fiscalQuarter" . fiscalquarter)
    ("reportedAt" . reportedat)
    ("counterpartyIds" . counterpartyids)
    ("instrument" . instrument)
    ("units" . units)
    ("unitPrice" . unitprice)
    ("percentage" . percentage)
    ("methodology" . methodology)
    ("qualifications" . qualifications)
    ("committeeId" . committeeid)
    ("donorId" . donorid)
    ("recipientId" . recipientid)
    ("filingId" . filingid)
    ("contributionType" . contributiontype)
    ("electionCycle" . electioncycle)
  ))

(defstruct claim
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (proposition nil)
  (subjectrefs nil)
  (objectrefs nil)
  (supportingsourceids nil)
  (reviewids nil)
  (truthstatus nil)
  (verificationmethod nil)
  (derivedfromclaimids nil)
  (scope nil)
  (claim nil)
  (claimantid nil)
  (subjectids nil)
  (predicate nil)
  (object nil)
  (claimtype nil)
  (polarity nil)
  (certainty nil)
  (supportingevidenceids nil)
  (contradictingevidenceids nil)
  (adjudication nil)
)
(defparameter +claim-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("proposition" . proposition)
    ("subjectRefs" . subjectrefs)
    ("objectRefs" . objectrefs)
    ("supportingSourceIds" . supportingsourceids)
    ("reviewIds" . reviewids)
    ("truthStatus" . truthstatus)
    ("verificationMethod" . verificationmethod)
    ("derivedFromClaimIds" . derivedfromclaimids)
    ("scope" . scope)
    ("claim" . claim)
    ("claimantId" . claimantid)
    ("subjectIds" . subjectids)
    ("predicate" . predicate)
    ("object" . object)
    ("claimType" . claimtype)
    ("polarity" . polarity)
    ("certainty" . certainty)
    ("supportingEvidenceIds" . supportingevidenceids)
    ("contradictingEvidenceIds" . contradictingevidenceids)
    ("adjudication" . adjudication)
  ))

(defstruct concept
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (conceptid nil)
  (vocabulary nil)
  (namespace nil)
  (version nil)
  (preferredlabel nil)
  (synonyms nil)
  (definitionsourceids nil)
  (mappingids nil)
  (term nil)
  (definition nil)
  (domain nil)
  (broaderids nil)
  (narrowerids nil)
  (relatedids nil)
  (examples nil)
  (criteria nil)
)
(defparameter +concept-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("conceptId" . conceptid)
    ("vocabulary" . vocabulary)
    ("namespace" . namespace)
    ("version" . version)
    ("preferredLabel" . preferredlabel)
    ("synonyms" . synonyms)
    ("definitionSourceIds" . definitionsourceids)
    ("mappingIds" . mappingids)
    ("term" . term)
    ("definition" . definition)
    ("domain" . domain)
    ("broaderIds" . broaderids)
    ("narrowerIds" . narrowerids)
    ("relatedIds" . relatedids)
    ("examples" . examples)
    ("criteria" . criteria)
  ))

(defstruct contract
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (parentawardid nil)
  (primeawardid nil)
  (partyroles nil)
  (fundingrecords nil)
  (lineitems nil)
  (clauseids nil)
  (deliverableids nil)
  (performancelocationids nil)
  (sourcesystemids nil)
  (contractid nil)
  (awardid nil)
  (solicitationid nil)
  (vehicleid nil)
  (buyerid nil)
  (sellerid nil)
  (agencyids nil)
  (vendorids nil)
  (subcontractorids nil)
  (scope nil)
  (awardtype nil)
  (competitiontype nil)
  (signedat nil)
  (startat nil)
  (endat nil)
  (ceilingamount nil)
  (potentialamount nil)
  (obligatedamount nil)
  (outlayamount nil)
  (recognizedrevenue nil)
  (currency nil)
  (naics nil)
  (psc nil)
  (placeofperformance nil)
  (modifications nil)
)
(defparameter +contract-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("parentAwardId" . parentawardid)
    ("primeAwardId" . primeawardid)
    ("partyRoles" . partyroles)
    ("fundingRecords" . fundingrecords)
    ("lineItems" . lineitems)
    ("clauseIds" . clauseids)
    ("deliverableIds" . deliverableids)
    ("performanceLocationIds" . performancelocationids)
    ("sourceSystemIds" . sourcesystemids)
    ("contractId" . contractid)
    ("awardId" . awardid)
    ("solicitationId" . solicitationid)
    ("vehicleId" . vehicleid)
    ("buyerId" . buyerid)
    ("sellerId" . sellerid)
    ("agencyIds" . agencyids)
    ("vendorIds" . vendorids)
    ("subcontractorIds" . subcontractorids)
    ("scope" . scope)
    ("awardType" . awardtype)
    ("competitionType" . competitiontype)
    ("signedAt" . signedat)
    ("startAt" . startat)
    ("endAt" . endat)
    ("ceilingAmount" . ceilingamount)
    ("potentialAmount" . potentialamount)
    ("obligatedAmount" . obligatedamount)
    ("outlayAmount" . outlayamount)
    ("recognizedRevenue" . recognizedrevenue)
    ("currency" . currency)
    ("naics" . naics)
    ("psc" . psc)
    ("placeOfPerformance" . placeofperformance)
    ("modifications" . modifications)
  ))

(defstruct dataset-manifest-count-entry
  (key nil)
  (value nil)
)
(defparameter +dataset-manifest-count-entry-wire-fields+
  '(
    ("key" . key)
    ("value" . value)
  ))

(defstruct dataset-manifest
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (datasetid nil)
  (datasetversion nil)
  (profile nil)
  (profileversion nil)
  (schemarevision nil)
  (documentversions nil)
  (sourcedatasetids nil)
  (synccursor nil)
  (syncstatus nil)
  (validatedat nil)
  (manifesttype nil)
  (name nil)
  (actor nil)
  (consumerpath nil)
  (targetoptions nil)
  (documentids nil)
  (countsbydtype nil)
  (recordcount nil)
  (payloadhashalgorithm nil)
  (payloadcontenthash nil)
  (files nil)
  (schemaversions nil)
  (generatedat nil)
)
(defparameter +dataset-manifest-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("datasetId" . datasetid)
    ("datasetVersion" . datasetversion)
    ("profile" . profile)
    ("profileVersion" . profileversion)
    ("schemaRevision" . schemarevision)
    ("documentVersions" . documentversions)
    ("sourceDatasetIds" . sourcedatasetids)
    ("syncCursor" . synccursor)
    ("syncStatus" . syncstatus)
    ("validatedAt" . validatedat)
    ("manifestType" . manifesttype)
    ("name" . name)
    ("actor" . actor)
    ("consumerPath" . consumerpath)
    ("targetOptions" . targetoptions)
    ("documentIds" . documentids)
    ("countsByDtype" . countsbydtype)
    ("recordCount" . recordcount)
    ("payloadHashAlgorithm" . payloadhashalgorithm)
    ("payloadContentHash" . payloadcontenthash)
    ("files" . files)
    ("schemaVersions" . schemaversions)
    ("generatedAt" . generatedat)
  ))

(defstruct education
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (educationtype nil)
  (credentialid nil)
  (programid nil)
  (attendancestatus nil)
  (awardedat nil)
  (thesistitle nil)
  (advisorids nil)
  (personid nil)
  (institutionid nil)
  (degree nil)
  (field nil)
  (startat nil)
  (endat nil)
  (graduated nil)
  (honors nil)
)
(defparameter +education-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("educationType" . educationtype)
    ("credentialId" . credentialid)
    ("programId" . programid)
    ("attendanceStatus" . attendancestatus)
    ("awardedAt" . awardedat)
    ("thesisTitle" . thesistitle)
    ("advisorIds" . advisorids)
    ("personId" . personid)
    ("institutionId" . institutionid)
    ("degree" . degree)
    ("field" . field)
    ("startAt" . startat)
    ("endAt" . endat)
    ("graduated" . graduated)
    ("honors" . honors)
  ))

(defstruct employment
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (roleids nil)
  (reportstoids nil)
  (appointmenttype nil)
  (appointedbyids nil)
  (compensationrecords nil)
  (responsibilities nil)
  (terminationreason nil)
  (personid nil)
  (organizationid nil)
  (title nil)
  (department nil)
  (startat nil)
  (endat nil)
  (current nil)
  (employmenttype nil)
  (locationid nil)
)
(defparameter +employment-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("roleIds" . roleids)
    ("reportsToIds" . reportstoids)
    ("appointmentType" . appointmenttype)
    ("appointedByIds" . appointedbyids)
    ("compensationRecords" . compensationrecords)
    ("responsibilities" . responsibilities)
    ("terminationReason" . terminationreason)
    ("personId" . personid)
    ("organizationId" . organizationid)
    ("title" . title)
    ("department" . department)
    ("startAt" . startat)
    ("endAt" . endat)
    ("current" . current)
    ("employmentType" . employmenttype)
    ("locationId" . locationid)
  ))

(defstruct entity
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (entityclass nil)
  (canonicalname nil)
  (sameasids nil)
  (duplicatecandidateids nil)
  (identityconfidence nil)
  (identitykeys nil)
  (etype nil)
  (eid nil)
  (name nil)
  (displayname nil)
  (legalname nil)
  (shortname nil)
  (formernames nil)
  (bio nil)
  (payloadjurisdiction nil)
  (country nil)
  (foundedat nil)
  (dissolvedat nil)
  (website nil)
  (imageurl nil)
  (logourl nil)
  (payloadexternalids nil)
  (contactids nil)
  (locationids nil)
)
(defparameter +entity-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("entityClass" . entityclass)
    ("canonicalName" . canonicalname)
    ("sameAsIds" . sameasids)
    ("duplicateCandidateIds" . duplicatecandidateids)
    ("identityConfidence" . identityconfidence)
    ("identityKeys" . identitykeys)
    ("etype" . etype)
    ("eid" . eid)
    ("name" . name)
    ("displayName" . displayname)
    ("legalName" . legalname)
    ("shortName" . shortname)
    ("formerNames" . formernames)
    ("bio" . bio)
    ("payloadJurisdiction" . payloadjurisdiction)
    ("country" . country)
    ("foundedAt" . foundedat)
    ("dissolvedAt" . dissolvedat)
    ("website" . website)
    ("imageUrl" . imageurl)
    ("logoUrl" . logourl)
    ("payloadExternalIds" . payloadexternalids)
    ("contactIds" . contactids)
    ("locationIds" . locationids)
  ))

(defstruct event
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (eventtypeid nil)
  (parenteventid nil)
  (childeventids nil)
  (participantroles nil)
  (actionrecords nil)
  (sourceeventids nil)
  (recurrencerule nil)
  (resultids nil)
  (claimids nil)
  (eventkind nil)
  (name nil)
  (participantids nil)
  (participants nil)
  (organizerids nil)
  (sponsorids nil)
  (locationids nil)
  (startat nil)
  (endat nil)
  (outcome nil)
  (agenda nil)
  (decisions nil)
  (actions nil)
  (amount nil)
  (currency nil)
  (payloadjurisdiction nil)
  (caseid nil)
  (contractid nil)
  (meetingid nil)
)
(defparameter +event-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("eventTypeId" . eventtypeid)
    ("parentEventId" . parenteventid)
    ("childEventIds" . childeventids)
    ("participantRoles" . participantroles)
    ("actionRecords" . actionrecords)
    ("sourceEventIds" . sourceeventids)
    ("recurrenceRule" . recurrencerule)
    ("resultIds" . resultids)
    ("claimIds" . claimids)
    ("eventKind" . eventkind)
    ("name" . name)
    ("participantIds" . participantids)
    ("participants" . participants)
    ("organizerIds" . organizerids)
    ("sponsorIds" . sponsorids)
    ("locationIds" . locationids)
    ("startAt" . startat)
    ("endAt" . endat)
    ("outcome" . outcome)
    ("agenda" . agenda)
    ("decisions" . decisions)
    ("actions" . actions)
    ("amount" . amount)
    ("currency" . currency)
    ("payloadJurisdiction" . payloadjurisdiction)
    ("caseId" . caseid)
    ("contractId" . contractid)
    ("meetingId" . meetingid)
  ))

(defstruct evidence-record
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (subjectids nil)
  (claimids nil)
  (exactcontent nil)
  (normalizedcontent nil)
  (extractionmethod nil)
  (captureactionid nil)
  (custodyactions nil)
  (hashes nil)
  (admissibilitystatus nil)
  (evidenceid nil)
  (sourceid nil)
  (sourceurl nil)
  (kind nil)
  (role nil)
  (claim nil)
  (observation nil)
  (excerpt nil)
  (locator nil)
  (page nil)
  (section nil)
  (payloadcollectedat nil)
  (payloadobservedat nil)
  (payloadcontenthash nil)
  (payloadhashalgorithm nil)
  (payloadconfidence nil)
  (corroborates nil)
  (contradicts nil)
  (payloadchainofcustody nil)
  (attachments nil)
  (payloadnotes nil)
  (metadata nil)
)
(defparameter +evidence-record-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("subjectIds" . subjectids)
    ("claimIds" . claimids)
    ("exactContent" . exactcontent)
    ("normalizedContent" . normalizedcontent)
    ("extractionMethod" . extractionmethod)
    ("captureActionId" . captureactionid)
    ("custodyActions" . custodyactions)
    ("hashes" . hashes)
    ("admissibilityStatus" . admissibilitystatus)
    ("evidenceId" . evidenceid)
    ("sourceId" . sourceid)
    ("sourceUrl" . sourceurl)
    ("kind" . kind)
    ("role" . role)
    ("claim" . claim)
    ("observation" . observation)
    ("excerpt" . excerpt)
    ("locator" . locator)
    ("page" . page)
    ("section" . section)
    ("payloadCollectedAt" . payloadcollectedat)
    ("payloadObservedAt" . payloadobservedat)
    ("payloadContentHash" . payloadcontenthash)
    ("payloadHashAlgorithm" . payloadhashalgorithm)
    ("payloadConfidence" . payloadconfidence)
    ("corroborates" . corroborates)
    ("contradicts" . contradicts)
    ("payloadChainOfCustody" . payloadchainofcustody)
    ("attachments" . attachments)
    ("payloadNotes" . payloadnotes)
    ("metadata" . metadata)
  ))

(defstruct financial-observation
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (transactionid nil)
  (payerids nil)
  (payeeids nil)
  (accountids nil)
  (amountrecord nil)
  (amountbasis nil)
  (reportingstandard nil)
  (filingids nil)
  (sourcetransactionids nil)
  (memoed nil)
  (refunded nil)
  (entityid nil)
  (observationtype nil)
  (amount nil)
  (currency nil)
  (valuetype nil)
  (periodstart nil)
  (periodend nil)
  (fiscalyear nil)
  (fiscalquarter nil)
  (reportedat nil)
  (counterpartyids nil)
  (instrument nil)
  (units nil)
  (unitprice nil)
  (percentage nil)
  (methodology nil)
  (qualifications nil)
)
(defparameter +financial-observation-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("transactionId" . transactionid)
    ("payerIds" . payerids)
    ("payeeIds" . payeeids)
    ("accountIds" . accountids)
    ("amountRecord" . amountrecord)
    ("amountBasis" . amountbasis)
    ("reportingStandard" . reportingstandard)
    ("filingIds" . filingids)
    ("sourceTransactionIds" . sourcetransactionids)
    ("memoed" . memoed)
    ("refunded" . refunded)
    ("entityId" . entityid)
    ("observationType" . observationtype)
    ("amount" . amount)
    ("currency" . currency)
    ("valueType" . valuetype)
    ("periodStart" . periodstart)
    ("periodEnd" . periodend)
    ("fiscalYear" . fiscalyear)
    ("fiscalQuarter" . fiscalquarter)
    ("reportedAt" . reportedat)
    ("counterpartyIds" . counterpartyids)
    ("instrument" . instrument)
    ("units" . units)
    ("unitPrice" . unitprice)
    ("percentage" . percentage)
    ("methodology" . methodology)
    ("qualifications" . qualifications)
  ))

(defstruct grant
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (awardnumber nil)
  (primerecipientid nil)
  (subrecipientids nil)
  (programid nil)
  (fundingrecords nil)
  (assistancelistingids nil)
  (matchingamount nil)
  (performancelocationids nil)
  (objectiveids nil)
  (reportids nil)
  (contractid nil)
  (awardid nil)
  (solicitationid nil)
  (vehicleid nil)
  (buyerid nil)
  (sellerid nil)
  (agencyids nil)
  (vendorids nil)
  (subcontractorids nil)
  (scope nil)
  (awardtype nil)
  (competitiontype nil)
  (signedat nil)
  (startat nil)
  (endat nil)
  (ceilingamount nil)
  (potentialamount nil)
  (obligatedamount nil)
  (outlayamount nil)
  (recognizedrevenue nil)
  (currency nil)
  (naics nil)
  (psc nil)
  (placeofperformance nil)
  (modifications nil)
  (grantorid nil)
  (recipientids nil)
  (program nil)
  (assistancelisting nil)
  (matchingrequired nil)
)
(defparameter +grant-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("awardNumber" . awardnumber)
    ("primeRecipientId" . primerecipientid)
    ("subrecipientIds" . subrecipientids)
    ("programId" . programid)
    ("fundingRecords" . fundingrecords)
    ("assistanceListingIds" . assistancelistingids)
    ("matchingAmount" . matchingamount)
    ("performanceLocationIds" . performancelocationids)
    ("objectiveIds" . objectiveids)
    ("reportIds" . reportids)
    ("contractId" . contractid)
    ("awardId" . awardid)
    ("solicitationId" . solicitationid)
    ("vehicleId" . vehicleid)
    ("buyerId" . buyerid)
    ("sellerId" . sellerid)
    ("agencyIds" . agencyids)
    ("vendorIds" . vendorids)
    ("subcontractorIds" . subcontractorids)
    ("scope" . scope)
    ("awardType" . awardtype)
    ("competitionType" . competitiontype)
    ("signedAt" . signedat)
    ("startAt" . startat)
    ("endAt" . endat)
    ("ceilingAmount" . ceilingamount)
    ("potentialAmount" . potentialamount)
    ("obligatedAmount" . obligatedamount)
    ("outlayAmount" . outlayamount)
    ("recognizedRevenue" . recognizedrevenue)
    ("currency" . currency)
    ("naics" . naics)
    ("psc" . psc)
    ("placeOfPerformance" . placeofperformance)
    ("modifications" . modifications)
    ("grantorId" . grantorid)
    ("recipientIds" . recipientids)
    ("program" . program)
    ("assistanceListing" . assistancelisting)
    ("matchingRequired" . matchingrequired)
  ))

(defstruct legal-case
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (courtid nil)
  (docketid nil)
  (partyroles nil)
  (relatedcaseids nil)
  (motionids nil)
  (orderids nil)
  (opinionids nil)
  (appealcaseids nil)
  (disposition nil)
  (precedentialstatus nil)
  (casenumber nil)
  (casename nil)
  (court nil)
  (payloadjurisdiction nil)
  (judgeids nil)
  (partyids nil)
  (plaintiffids nil)
  (defendantids nil)
  (attorneyids nil)
  (casetype nil)
  (claims nil)
  (filedat nil)
  (closedat nil)
  (docketentries nil)
  (outcome nil)
  (citation nil)
)
(defparameter +legal-case-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("courtId" . courtid)
    ("docketId" . docketid)
    ("partyRoles" . partyroles)
    ("relatedCaseIds" . relatedcaseids)
    ("motionIds" . motionids)
    ("orderIds" . orderids)
    ("opinionIds" . opinionids)
    ("appealCaseIds" . appealcaseids)
    ("disposition" . disposition)
    ("precedentialStatus" . precedentialstatus)
    ("caseNumber" . casenumber)
    ("caseName" . casename)
    ("court" . court)
    ("payloadJurisdiction" . payloadjurisdiction)
    ("judgeIds" . judgeids)
    ("partyIds" . partyids)
    ("plaintiffIds" . plaintiffids)
    ("defendantIds" . defendantids)
    ("attorneyIds" . attorneyids)
    ("caseType" . casetype)
    ("claims" . claims)
    ("filedAt" . filedat)
    ("closedAt" . closedat)
    ("docketEntries" . docketentries)
    ("outcome" . outcome)
    ("citation" . citation)
  ))

(defstruct lobbying-filing
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (filingsystem nil)
  (registrantrefs nil)
  (clientrefs nil)
  (lobbyistrefs nil)
  (coveredofficialids nil)
  (issuecodes nil)
  (amountrecords nil)
  (foreignentityids nil)
  (priorfilingid nil)
  (amendsfilingid nil)
  (sourcefilingurl nil)
  (filingid nil)
  (registrantid nil)
  (clientid nil)
  (lobbyistids nil)
  (governmententities nil)
  (issues nil)
  (specificissues nil)
  (income nil)
  (expenses nil)
  (currency nil)
  (periodstart nil)
  (periodend nil)
  (filedat nil)
  (filingtype nil)
  (amendment nil)
  (termination nil)
)
(defparameter +lobbying-filing-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("filingSystem" . filingsystem)
    ("registrantRefs" . registrantrefs)
    ("clientRefs" . clientrefs)
    ("lobbyistRefs" . lobbyistrefs)
    ("coveredOfficialIds" . coveredofficialids)
    ("issueCodes" . issuecodes)
    ("amountRecords" . amountrecords)
    ("foreignEntityIds" . foreignentityids)
    ("priorFilingId" . priorfilingid)
    ("amendsFilingId" . amendsfilingid)
    ("sourceFilingUrl" . sourcefilingurl)
    ("filingId" . filingid)
    ("registrantId" . registrantid)
    ("clientId" . clientid)
    ("lobbyistIds" . lobbyistids)
    ("governmentEntities" . governmententities)
    ("issues" . issues)
    ("specificIssues" . specificissues)
    ("income" . income)
    ("expenses" . expenses)
    ("currency" . currency)
    ("periodStart" . periodstart)
    ("periodEnd" . periodend)
    ("filedAt" . filedat)
    ("filingType" . filingtype)
    ("amendment" . amendment)
    ("termination" . termination)
  ))

(defstruct meeting
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (meetingtype nil)
  (chairids nil)
  (attendeeroles nil)
  (agendaitemids nil)
  (minutefileids nil)
  (decisionids nil)
  (actionitemids nil)
  (parentmeetingid nil)
  (recurrencerule nil)
  (eventkind nil)
  (name nil)
  (participantids nil)
  (participants nil)
  (organizerids nil)
  (sponsorids nil)
  (locationids nil)
  (startat nil)
  (endat nil)
  (outcome nil)
  (agenda nil)
  (decisions nil)
  (actions nil)
  (amount nil)
  (currency nil)
  (payloadjurisdiction nil)
  (caseid nil)
  (contractid nil)
  (meetingid nil)
)
(defparameter +meeting-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("meetingType" . meetingtype)
    ("chairIds" . chairids)
    ("attendeeRoles" . attendeeroles)
    ("agendaItemIds" . agendaitemids)
    ("minuteFileIds" . minutefileids)
    ("decisionIds" . decisionids)
    ("actionItemIds" . actionitemids)
    ("parentMeetingId" . parentmeetingid)
    ("recurrenceRule" . recurrencerule)
    ("eventKind" . eventkind)
    ("name" . name)
    ("participantIds" . participantids)
    ("participants" . participants)
    ("organizerIds" . organizerids)
    ("sponsorIds" . sponsorids)
    ("locationIds" . locationids)
    ("startAt" . startat)
    ("endAt" . endat)
    ("outcome" . outcome)
    ("agenda" . agenda)
    ("decisions" . decisions)
    ("actions" . actions)
    ("amount" . amount)
    ("currency" . currency)
    ("payloadJurisdiction" . payloadjurisdiction)
    ("caseId" . caseid)
    ("contractId" . contractid)
    ("meetingId" . meetingid)
  ))

(defstruct observation
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (subjectrefs nil)
  (observedproperty nil)
  (rawvalue nil)
  (actionid nil)
  (observerrefs nil)
  (uncertainty nil)
  (observerid nil)
  (subjectid nil)
  (observationtype nil)
  (value nil)
  (unit nil)
  (method nil)
  (instrument nil)
  (payloadobservedat nil)
)
(defparameter +observation-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("subjectRefs" . subjectrefs)
    ("observedProperty" . observedproperty)
    ("rawValue" . rawvalue)
    ("actionId" . actionid)
    ("observerRefs" . observerrefs)
    ("uncertainty" . uncertainty)
    ("observerId" . observerid)
    ("subjectId" . subjectid)
    ("observationType" . observationtype)
    ("value" . value)
    ("unit" . unit)
    ("method" . method)
    ("instrument" . instrument)
    ("payloadObservedAt" . payloadobservedat)
  ))

(defstruct ownership
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (ownerrefs nil)
  (ownedrefs nil)
  (ownershipinstrument nil)
  (percentagebasis nil)
  (votingpercentage nil)
  (economicpercentage nil)
  (valuerecord nil)
  (acquisitioneventid nil)
  (disposaleventid nil)
  (ownerid nil)
  (assetid nil)
  (ownershiptype nil)
  (percentage nil)
  (units nil)
  (startat nil)
  (endat nil)
  (beneficial nil)
  (direct nil)
)
(defparameter +ownership-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("ownerRefs" . ownerrefs)
    ("ownedRefs" . ownedrefs)
    ("ownershipInstrument" . ownershipinstrument)
    ("percentageBasis" . percentagebasis)
    ("votingPercentage" . votingpercentage)
    ("economicPercentage" . economicpercentage)
    ("valueRecord" . valuerecord)
    ("acquisitionEventId" . acquisitioneventid)
    ("disposalEventId" . disposaleventid)
    ("ownerId" . ownerid)
    ("assetId" . assetid)
    ("ownershipType" . ownershiptype)
    ("percentage" . percentage)
    ("units" . units)
    ("startAt" . startat)
    ("endAt" . endat)
    ("beneficial" . beneficial)
    ("direct" . direct)
  ))

(defstruct policy
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (policyversion nil)
  (parentpolicyid nil)
  (authorityids nil)
  (implementationids nil)
  (textfileids nil)
  (sectionids nil)
  (adoptedat nil)
  (repealedat nil)
  (supersededbyid nil)
  (compliancerequirementids nil)
  (policyid nil)
  (name nil)
  (issuerid nil)
  (payloadjurisdiction nil)
  (policytype nil)
  (text nil)
  (effectiveat nil)
  (payloadexpiresat nil)
  (affectedids nil)
)
(defparameter +policy-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("policyVersion" . policyversion)
    ("parentPolicyId" . parentpolicyid)
    ("authorityIds" . authorityids)
    ("implementationIds" . implementationids)
    ("textFileIds" . textfileids)
    ("sectionIds" . sectionids)
    ("adoptedAt" . adoptedat)
    ("repealedAt" . repealedat)
    ("supersededById" . supersededbyid)
    ("complianceRequirementIds" . compliancerequirementids)
    ("policyId" . policyid)
    ("name" . name)
    ("issuerId" . issuerid)
    ("payloadJurisdiction" . payloadjurisdiction)
    ("policyType" . policytype)
    ("text" . text)
    ("effectiveAt" . effectiveat)
    ("payloadExpiresAt" . payloadexpiresat)
    ("affectedIds" . affectedids)
  ))

(defstruct procurement
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (procurementstage nil)
  (noticeid nil)
  (parentawardid nil)
  (partyroles nil)
  (fundingrecords nil)
  (lineitems nil)
  (competitionexceptions nil)
  (evaluationcriteria nil)
  (sourcesystemids nil)
  (contractid nil)
  (awardid nil)
  (solicitationid nil)
  (vehicleid nil)
  (buyerid nil)
  (sellerid nil)
  (agencyids nil)
  (vendorids nil)
  (subcontractorids nil)
  (scope nil)
  (awardtype nil)
  (competitiontype nil)
  (signedat nil)
  (startat nil)
  (endat nil)
  (ceilingamount nil)
  (potentialamount nil)
  (obligatedamount nil)
  (outlayamount nil)
  (recognizedrevenue nil)
  (currency nil)
  (naics nil)
  (psc nil)
  (placeofperformance nil)
  (modifications nil)
)
(defparameter +procurement-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("procurementStage" . procurementstage)
    ("noticeId" . noticeid)
    ("parentAwardId" . parentawardid)
    ("partyRoles" . partyroles)
    ("fundingRecords" . fundingrecords)
    ("lineItems" . lineitems)
    ("competitionExceptions" . competitionexceptions)
    ("evaluationCriteria" . evaluationcriteria)
    ("sourceSystemIds" . sourcesystemids)
    ("contractId" . contractid)
    ("awardId" . awardid)
    ("solicitationId" . solicitationid)
    ("vehicleId" . vehicleid)
    ("buyerId" . buyerid)
    ("sellerId" . sellerid)
    ("agencyIds" . agencyids)
    ("vendorIds" . vendorids)
    ("subcontractorIds" . subcontractorids)
    ("scope" . scope)
    ("awardType" . awardtype)
    ("competitionType" . competitiontype)
    ("signedAt" . signedat)
    ("startAt" . startat)
    ("endAt" . endat)
    ("ceilingAmount" . ceilingamount)
    ("potentialAmount" . potentialamount)
    ("obligatedAmount" . obligatedamount)
    ("outlayAmount" . outlayamount)
    ("recognizedRevenue" . recognizedrevenue)
    ("currency" . currency)
    ("naics" . naics)
    ("psc" . psc)
    ("placeOfPerformance" . placeofperformance)
    ("modifications" . modifications)
  ))

(defstruct product
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (supplierids nil)
  (versionids nil)
  (componentids nil)
  (dependencyids nil)
  (deploymentids nil)
  (sbomfileids nil)
  (supportendat nil)
  (pricingrecords nil)
  (securityadvisoryids nil)
  (etype nil)
  (eid nil)
  (name nil)
  (displayname nil)
  (legalname nil)
  (shortname nil)
  (formernames nil)
  (bio nil)
  (payloadjurisdiction nil)
  (country nil)
  (foundedat nil)
  (dissolvedat nil)
  (website nil)
  (imageurl nil)
  (logourl nil)
  (payloadexternalids nil)
  (contactids nil)
  (locationids nil)
  (manufacturerid nil)
  (vendorids nil)
  (producttype nil)
  (model nil)
  (versionname nil)
  (releasedate nil)
  (endoflife nil)
  (features nil)
  (capabilities nil)
  (integrations nil)
  (customers nil)
  (license nil)
  (pricing nil)
  (technical nil)
)
(defparameter +product-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("supplierIds" . supplierids)
    ("versionIds" . versionids)
    ("componentIds" . componentids)
    ("dependencyIds" . dependencyids)
    ("deploymentIds" . deploymentids)
    ("sbomFileIds" . sbomfileids)
    ("supportEndAt" . supportendat)
    ("pricingRecords" . pricingrecords)
    ("securityAdvisoryIds" . securityadvisoryids)
    ("etype" . etype)
    ("eid" . eid)
    ("name" . name)
    ("displayName" . displayname)
    ("legalName" . legalname)
    ("shortName" . shortname)
    ("formerNames" . formernames)
    ("bio" . bio)
    ("payloadJurisdiction" . payloadjurisdiction)
    ("country" . country)
    ("foundedAt" . foundedat)
    ("dissolvedAt" . dissolvedat)
    ("website" . website)
    ("imageUrl" . imageurl)
    ("logoUrl" . logourl)
    ("payloadExternalIds" . payloadexternalids)
    ("contactIds" . contactids)
    ("locationIds" . locationids)
    ("manufacturerId" . manufacturerid)
    ("vendorIds" . vendorids)
    ("productType" . producttype)
    ("model" . model)
    ("versionName" . versionname)
    ("releaseDate" . releasedate)
    ("endOfLife" . endoflife)
    ("features" . features)
    ("capabilities" . capabilities)
    ("integrations" . integrations)
    ("customers" . customers)
    ("license" . license)
    ("pricing" . pricing)
    ("technical" . technical)
  ))

(defstruct research-node
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (objective nil)
  (instructions nil)
  (inputids nil)
  (targetids nil)
  (actorids nil)
  (actorselectionrules nil)
  (outputids nil)
  (artifactids nil)
  (childids nil)
  (dependencyids nil)
  (runids nil)
  (currentactorid nil)
  (currentrunid nil)
  (limits nil)
  (stop nil)
  (counters nil)
  (history nil)
  (nodecreatedat nil)
  (startedat nil)
  (completedat nil)
  (lasterror nil)
  (pausedreason nil)
)
(defparameter +research-node-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("objective" . objective)
    ("instructions" . instructions)
    ("inputIds" . inputids)
    ("targetIds" . targetids)
    ("actorIds" . actorids)
    ("actorSelectionRules" . actorselectionrules)
    ("outputIds" . outputids)
    ("artifactIds" . artifactids)
    ("childIds" . childids)
    ("dependencyIds" . dependencyids)
    ("runIds" . runids)
    ("currentActorId" . currentactorid)
    ("currentRunId" . currentrunid)
    ("limits" . limits)
    ("stop" . stop)
    ("counters" . counters)
    ("history" . history)
    ("nodeCreatedAt" . nodecreatedat)
    ("startedAt" . startedat)
    ("completedAt" . completedat)
    ("lastError" . lasterror)
    ("pausedReason" . pausedreason)
  ))

(defstruct research-pass
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (parentpassid nil)
  (childpassids nil)
  (targetids nil)
  (actionrecords nil)
  (claimids nil)
  (outputids nil)
  (metrics nil)
  (terminationreason nil)
  (schemarevision nil)
  (researchquestion nil)
  (method nil)
  (classificationrules nil)
  (findingids nil)
  (findings nil)
  (supportingrecordids nil)
  (counterevidenceids nil)
  (unresolvedtargetids nil)
  (sourceids nil)
  (agentidentity nil)
  (narrativerole nil)
  (startedat nil)
  (completedat nil)
  (iteration nil)
)
(defparameter +research-pass-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("parentPassId" . parentpassid)
    ("childPassIds" . childpassids)
    ("targetIds" . targetids)
    ("actionRecords" . actionrecords)
    ("claimIds" . claimids)
    ("outputIds" . outputids)
    ("metrics" . metrics)
    ("terminationReason" . terminationreason)
    ("schemaRevision" . schemarevision)
    ("researchQuestion" . researchquestion)
    ("method" . method)
    ("classificationRules" . classificationrules)
    ("findingIds" . findingids)
    ("findings" . findings)
    ("supportingRecordIds" . supportingrecordids)
    ("counterevidenceIds" . counterevidenceids)
    ("unresolvedTargetIds" . unresolvedtargetids)
    ("sourceIds" . sourceids)
    ("agentIdentity" . agentidentity)
    ("narrativeRole" . narrativerole)
    ("startedAt" . startedat)
    ("completedAt" . completedat)
    ("iteration" . iteration)
  ))

(defstruct social-media-post
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (authorrefs nil)
  (conversationid nil)
  (parentpostid nil)
  (attachmentids nil)
  (captureids nil)
  (engagementobservationids nil)
  (payloadcontenthash nil)
  (content nil)
  (platform nil)
  (user nil)
  (userid nil)
  (isreply nil)
  (media nil)
  (messageid nil)
  (replyto nil)
  (group nil)
  (channel nil)
  (threadid nil)
  (mentions nil)
  (reactions nil)
  (links nil)
  (postedat nil)
  (editedat nil)
  (payloaddeleted nil)
  (payloadvisibility nil)
  (replies nil)
  (replycount nil)
  (repostcount nil)
  (likecount nil)
  (viewcount nil)
  (url nil)
  (payloadtags nil)
  (title nil)
  (quotepostid nil)
)
(defparameter +social-media-post-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("authorRefs" . authorrefs)
    ("conversationId" . conversationid)
    ("parentPostId" . parentpostid)
    ("attachmentIds" . attachmentids)
    ("captureIds" . captureids)
    ("engagementObservationIds" . engagementobservationids)
    ("payloadContentHash" . payloadcontenthash)
    ("content" . content)
    ("platform" . platform)
    ("user" . user)
    ("userId" . userid)
    ("isReply" . isreply)
    ("media" . media)
    ("messageId" . messageid)
    ("replyTo" . replyto)
    ("group" . group)
    ("channel" . channel)
    ("threadId" . threadid)
    ("mentions" . mentions)
    ("reactions" . reactions)
    ("links" . links)
    ("postedAt" . postedat)
    ("editedAt" . editedat)
    ("payloadDeleted" . payloaddeleted)
    ("payloadVisibility" . payloadvisibility)
    ("replies" . replies)
    ("replyCount" . replycount)
    ("repostCount" . repostcount)
    ("likeCount" . likecount)
    ("viewCount" . viewcount)
    ("url" . url)
    ("payloadTags" . payloadtags)
    ("title" . title)
    ("quotePostId" . quotepostid)
  ))

(defstruct source
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (sourcetypeid nil)
  (publisherid nil)
  (authorids nil)
  (captureactionid nil)
  (originalfileids nil)
  (archiveids nil)
  (termsofuse nil)
  (accessrestrictions nil)
  (supersedessourceids nil)
  (sourceid nil)
  (kind nil)
  (type nil)
  (sensor nil)
  (name nil)
  (title nil)
  (publisher nil)
  (author nil)
  (organization nil)
  (uri nil)
  (url nil)
  (archiveurl nil)
  (publishedat nil)
  (retrievedat nil)
  (accessedat nil)
  (payloadlanguage nil)
  (payloadjurisdiction nil)
  (medium nil)
  (credibility nil)
  (reliability nil)
  (authenticity nil)
  (independence nil)
  (accessmethod nil)
  (query nil)
  (requestid nil)
  (responsestatus nil)
  (payloadcontenthash nil)
  (payloadhashalgorithm nil)
  (license nil)
  (quote nil)
  (locator nil)
  (page nil)
  (section nil)
  (payloadnotes nil)
  (metadata nil)
)
(defparameter +source-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("sourceTypeId" . sourcetypeid)
    ("publisherId" . publisherid)
    ("authorIds" . authorids)
    ("captureActionId" . captureactionid)
    ("originalFileIds" . originalfileids)
    ("archiveIds" . archiveids)
    ("termsOfUse" . termsofuse)
    ("accessRestrictions" . accessrestrictions)
    ("supersedesSourceIds" . supersedessourceids)
    ("sourceId" . sourceid)
    ("kind" . kind)
    ("type" . type)
    ("sensor" . sensor)
    ("name" . name)
    ("title" . title)
    ("publisher" . publisher)
    ("author" . author)
    ("organization" . organization)
    ("uri" . uri)
    ("url" . url)
    ("archiveUrl" . archiveurl)
    ("publishedAt" . publishedat)
    ("retrievedAt" . retrievedat)
    ("accessedAt" . accessedat)
    ("payloadLanguage" . payloadlanguage)
    ("payloadJurisdiction" . payloadjurisdiction)
    ("medium" . medium)
    ("credibility" . credibility)
    ("reliability" . reliability)
    ("authenticity" . authenticity)
    ("independence" . independence)
    ("accessMethod" . accessmethod)
    ("query" . query)
    ("requestId" . requestid)
    ("responseStatus" . responsestatus)
    ("payloadContentHash" . payloadcontenthash)
    ("payloadHashAlgorithm" . payloadhashalgorithm)
    ("license" . license)
    ("quote" . quote)
    ("locator" . locator)
    ("page" . page)
    ("section" . section)
    ("payloadNotes" . payloadnotes)
    ("metadata" . metadata)
  ))

(defstruct task
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (description nil)
  (status nil)
  (contentvalidfrom nil)
  (contentvaliduntil nil)
  (parenttaskid nil)
  (dependencytaskids nil)
  (actorids nil)
  (skillids nil)
  (toolids nil)
  (inputids nil)
  (attemptids nil)
  (schedule nil)
  (startedat nil)
  (resultsummary nil)
  (errorids nil)
  (tasktype nil)
  (subjectids nil)
  (assigneeids nil)
  (priority nil)
  (dueat nil)
  (completedat nil)
  (instructions nil)
  (resultids nil)
)
(defparameter +task-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("description" . description)
    ("status" . status)
    ("contentValidFrom" . contentvalidfrom)
    ("contentValidUntil" . contentvaliduntil)
    ("parentTaskId" . parenttaskid)
    ("dependencyTaskIds" . dependencytaskids)
    ("actorIds" . actorids)
    ("skillIds" . skillids)
    ("toolIds" . toolids)
    ("inputIds" . inputids)
    ("attemptIds" . attemptids)
    ("schedule" . schedule)
    ("startedAt" . startedat)
    ("resultSummary" . resultsummary)
    ("errorIds" . errorids)
    ("taskType" . tasktype)
    ("subjectIds" . subjectids)
    ("assigneeIds" . assigneeids)
    ("priority" . priority)
    ("dueAt" . dueat)
    ("completedAt" . completedat)
    ("instructions" . instructions)
    ("resultIds" . resultids)
  ))

(defstruct target
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (actor nil)
  (target nil)
  (targettype nil)
  (scope nil)
  (delay nil)
  (recurring nil)
  (schedule nil)
  (options nil)
  (state nil)
  (priority nil)
  (notbefore nil)
  (deadline nil)
  (lastrunat nil)
  (nextrunat nil)
  (attempts nil)
  (maximumattempts nil)
  (lasterror nil)
)
(defparameter +target-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("actor" . actor)
    ("target" . target)
    ("targetType" . targettype)
    ("scope" . scope)
    ("delay" . delay)
    ("recurring" . recurring)
    ("schedule" . schedule)
    ("options" . options)
    ("state" . state)
    ("priority" . priority)
    ("notBefore" . notbefore)
    ("deadline" . deadline)
    ("lastRunAt" . lastrunat)
    ("nextRunAt" . nextrunat)
    ("attempts" . attempts)
    ("maximumAttempts" . maximumattempts)
    ("lastError" . lasterror)
  ))

(defstruct actor-manifest
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (actor nil)
  (actorversion nil)
  (consumerpaths nil)
  (targetoptions nil)
  (accepts nil)
  (produces nil)
  (capabilities nil)
  (runtime nil)
  (endpoint nil)
  (mailbox nil)
  (restartpolicy nil)
  (healthendpoint nil)
  (heartbeatseconds nil)
  (metadata nil)
)
(defparameter +actor-manifest-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("actor" . actor)
    ("actorVersion" . actorversion)
    ("consumerPaths" . consumerpaths)
    ("targetOptions" . targetoptions)
    ("accepts" . accepts)
    ("produces" . produces)
    ("capabilities" . capabilities)
    ("runtime" . runtime)
    ("endpoint" . endpoint)
    ("mailbox" . mailbox)
    ("restartPolicy" . restartpolicy)
    ("healthEndpoint" . healthendpoint)
    ("heartbeatSeconds" . heartbeatseconds)
    ("metadata" . metadata)
  ))

(defstruct artifact
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (filename nil)
  (mediatype nil)
  (uri nil)
  (storageuri nil)
  (byteshash nil)
  (size nil)
  (extractedtext nil)
  (ocrtext nil)
  (metadata nil)
  (attachments nil)
)
(defparameter +artifact-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("filename" . filename)
    ("mediaType" . mediatype)
    ("uri" . uri)
    ("storageUri" . storageuri)
    ("bytesHash" . byteshash)
    ("size" . size)
    ("extractedText" . extractedtext)
    ("ocrText" . ocrtext)
    ("metadata" . metadata)
    ("attachments" . attachments)
  ))

(defstruct finding
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (title nil)
  (description nil)
  (findingtype nil)
  (severity nil)
  (status nil)
  (asset nil)
  (evidence nil)
  (recommendation nil)
  (discoveredat nil)
  (resolvedat nil)
  (cve nil)
  (cwe nil)
  (cvss nil)
)
(defparameter +finding-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("title" . title)
    ("description" . description)
    ("findingType" . findingtype)
    ("severity" . severity)
    ("status" . status)
    ("asset" . asset)
    ("evidence" . evidence)
    ("recommendation" . recommendation)
    ("discoveredAt" . discoveredat)
    ("resolvedAt" . resolvedat)
    ("cve" . cve)
    ("cwe" . cwe)
    ("cvss" . cvss)
  ))

(defstruct scope
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (program nil)
  (inscope nil)
  (outofscope nil)
  (rules nil)
  (startsat nil)
  (endsat nil)
  (ratelimits nil)
  (allowedtools nil)
  (prohibitedactions nil)
)
(defparameter +scope-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("program" . program)
    ("inScope" . inscope)
    ("outOfScope" . outofscope)
    ("rules" . rules)
    ("startsAt" . startsat)
    ("endsAt" . endsat)
    ("rateLimits" . ratelimits)
    ("allowedTools" . allowedtools)
    ("prohibitedActions" . prohibitedactions)
  ))

(defstruct file
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (filename nil)
  (originalname nil)
  (uri nil)
  (storageuri nil)
  (path nil)
  (filekind nil)
  (mediatype nil)
  (declaredmediatype nil)
  (sniffedmediatype nil)
  (magictype nil)
  (detectedformat nil)
  (extension nil)
  (storageid nil)
  (byteshash nil)
  (byteshashalgorithm nil)
  (hashes nil)
  (trustfilenameextension nil)
  (compression nil)
  (encrypted nil)
  (passwordprotected nil)
  (archive nil)
  (archiveentries nil)
  (quarantined nil)
  (executable nil)
  (parsestatus nil)
  (parser nil)
  (parserversion nil)
  (parseerror nil)
  (containerfile nil)
  (parentfile nil)
  (derivedfiles nil)
  (captureaction nil)
  (extractedmetadata nil)
)
(defparameter +file-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("filename" . filename)
    ("originalName" . originalname)
    ("uri" . uri)
    ("storageUri" . storageuri)
    ("path" . path)
    ("fileKind" . filekind)
    ("mediaType" . mediatype)
    ("declaredMediaType" . declaredmediatype)
    ("sniffedMediaType" . sniffedmediatype)
    ("magicType" . magictype)
    ("detectedFormat" . detectedformat)
    ("extension" . extension)
    ("storageId" . storageid)
    ("bytesHash" . byteshash)
    ("bytesHashAlgorithm" . byteshashalgorithm)
    ("hashes" . hashes)
    ("trustFilenameExtension" . trustfilenameextension)
    ("compression" . compression)
    ("encrypted" . encrypted)
    ("passwordProtected" . passwordprotected)
    ("archive" . archive)
    ("archiveEntries" . archiveentries)
    ("quarantined" . quarantined)
    ("executable" . executable)
    ("parseStatus" . parsestatus)
    ("parser" . parser)
    ("parserVersion" . parserversion)
    ("parseError" . parseerror)
    ("containerFile" . containerfile)
    ("parentFile" . parentfile)
    ("derivedFiles" . derivedfiles)
    ("captureAction" . captureaction)
    ("extractedMetadata" . extractedmetadata)
  ))

(defstruct media
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (sourcefile nil)
  (mediatype nil)
  (codec nil)
  (container nil)
  (durationseconds nil)
  (width nil)
  (height nil)
  (title nil)
  (creatorrefs nil)
  (publisher nil)
  (transcript nil)
  (transcriptfile nil)
  (ocrtext nil)
  (derivativefiles nil)
  (captureaction nil)
)
(defparameter +media-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("sourceFile" . sourcefile)
    ("mediaType" . mediatype)
    ("codec" . codec)
    ("container" . container)
    ("durationSeconds" . durationseconds)
    ("width" . width)
    ("height" . height)
    ("title" . title)
    ("creatorRefs" . creatorrefs)
    ("publisher" . publisher)
    ("transcript" . transcript)
    ("transcriptFile" . transcriptfile)
    ("ocrText" . ocrtext)
    ("derivativeFiles" . derivativefiles)
    ("captureAction" . captureaction)
  ))

(defstruct image
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (filename nil)
  (originalname nil)
  (uri nil)
  (storageuri nil)
  (path nil)
  (filekind nil)
  (mediatype nil)
  (declaredmediatype nil)
  (sniffedmediatype nil)
  (magictype nil)
  (detectedformat nil)
  (extension nil)
  (storageid nil)
  (byteshash nil)
  (byteshashalgorithm nil)
  (hashes nil)
  (trustfilenameextension nil)
  (compression nil)
  (encrypted nil)
  (passwordprotected nil)
  (archive nil)
  (archiveentries nil)
  (quarantined nil)
  (executable nil)
  (parsestatus nil)
  (parser nil)
  (parserversion nil)
  (parseerror nil)
  (containerfile nil)
  (parentfile nil)
  (derivedfiles nil)
  (captureaction nil)
  (extractedmetadata nil)
  (width nil)
  (height nil)
  (orientation nil)
  (capturedat nil)
  (capturedevice nil)
  (location nil)
  (exif nil)
  (ocrtext nil)
  (thumbnailfiles nil)
  (derivedimages nil)
)
(defparameter +image-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("filename" . filename)
    ("originalName" . originalname)
    ("uri" . uri)
    ("storageUri" . storageuri)
    ("path" . path)
    ("fileKind" . filekind)
    ("mediaType" . mediatype)
    ("declaredMediaType" . declaredmediatype)
    ("sniffedMediaType" . sniffedmediatype)
    ("magicType" . magictype)
    ("detectedFormat" . detectedformat)
    ("extension" . extension)
    ("storageId" . storageid)
    ("bytesHash" . byteshash)
    ("bytesHashAlgorithm" . byteshashalgorithm)
    ("hashes" . hashes)
    ("trustFilenameExtension" . trustfilenameextension)
    ("compression" . compression)
    ("encrypted" . encrypted)
    ("passwordProtected" . passwordprotected)
    ("archive" . archive)
    ("archiveEntries" . archiveentries)
    ("quarantined" . quarantined)
    ("executable" . executable)
    ("parseStatus" . parsestatus)
    ("parser" . parser)
    ("parserVersion" . parserversion)
    ("parseError" . parseerror)
    ("containerFile" . containerfile)
    ("parentFile" . parentfile)
    ("derivedFiles" . derivedfiles)
    ("captureAction" . captureaction)
    ("extractedMetadata" . extractedmetadata)
    ("width" . width)
    ("height" . height)
    ("orientation" . orientation)
    ("capturedAt" . capturedat)
    ("captureDevice" . capturedevice)
    ("location" . location)
    ("exif" . exif)
    ("ocrText" . ocrtext)
    ("thumbnailFiles" . thumbnailfiles)
    ("derivedImages" . derivedimages)
  ))

(defstruct picture
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (filename nil)
  (originalname nil)
  (uri nil)
  (storageuri nil)
  (path nil)
  (filekind nil)
  (mediatype nil)
  (declaredmediatype nil)
  (sniffedmediatype nil)
  (magictype nil)
  (detectedformat nil)
  (extension nil)
  (storageid nil)
  (byteshash nil)
  (byteshashalgorithm nil)
  (hashes nil)
  (trustfilenameextension nil)
  (compression nil)
  (encrypted nil)
  (passwordprotected nil)
  (archive nil)
  (archiveentries nil)
  (quarantined nil)
  (executable nil)
  (parsestatus nil)
  (parser nil)
  (parserversion nil)
  (parseerror nil)
  (containerfile nil)
  (parentfile nil)
  (derivedfiles nil)
  (captureaction nil)
  (extractedmetadata nil)
  (width nil)
  (height nil)
  (orientation nil)
  (capturedat nil)
  (capturedevice nil)
  (location nil)
  (exif nil)
  (ocrtext nil)
  (thumbnailfiles nil)
  (derivedimages nil)
  (picturekind nil)
)
(defparameter +picture-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("filename" . filename)
    ("originalName" . originalname)
    ("uri" . uri)
    ("storageUri" . storageuri)
    ("path" . path)
    ("fileKind" . filekind)
    ("mediaType" . mediatype)
    ("declaredMediaType" . declaredmediatype)
    ("sniffedMediaType" . sniffedmediatype)
    ("magicType" . magictype)
    ("detectedFormat" . detectedformat)
    ("extension" . extension)
    ("storageId" . storageid)
    ("bytesHash" . byteshash)
    ("bytesHashAlgorithm" . byteshashalgorithm)
    ("hashes" . hashes)
    ("trustFilenameExtension" . trustfilenameextension)
    ("compression" . compression)
    ("encrypted" . encrypted)
    ("passwordProtected" . passwordprotected)
    ("archive" . archive)
    ("archiveEntries" . archiveentries)
    ("quarantined" . quarantined)
    ("executable" . executable)
    ("parseStatus" . parsestatus)
    ("parser" . parser)
    ("parserVersion" . parserversion)
    ("parseError" . parseerror)
    ("containerFile" . containerfile)
    ("parentFile" . parentfile)
    ("derivedFiles" . derivedfiles)
    ("captureAction" . captureaction)
    ("extractedMetadata" . extractedmetadata)
    ("width" . width)
    ("height" . height)
    ("orientation" . orientation)
    ("capturedAt" . capturedat)
    ("captureDevice" . capturedevice)
    ("location" . location)
    ("exif" . exif)
    ("ocrText" . ocrtext)
    ("thumbnailFiles" . thumbnailfiles)
    ("derivedImages" . derivedimages)
    ("pictureKind" . picturekind)
  ))

(defstruct video
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (filename nil)
  (originalname nil)
  (uri nil)
  (storageuri nil)
  (path nil)
  (filekind nil)
  (mediatype nil)
  (declaredmediatype nil)
  (sniffedmediatype nil)
  (magictype nil)
  (detectedformat nil)
  (extension nil)
  (storageid nil)
  (byteshash nil)
  (byteshashalgorithm nil)
  (hashes nil)
  (trustfilenameextension nil)
  (compression nil)
  (encrypted nil)
  (passwordprotected nil)
  (archive nil)
  (archiveentries nil)
  (quarantined nil)
  (executable nil)
  (parsestatus nil)
  (parser nil)
  (parserversion nil)
  (parseerror nil)
  (containerfile nil)
  (parentfile nil)
  (derivedfiles nil)
  (captureaction nil)
  (extractedmetadata nil)
  (container nil)
  (codec nil)
  (width nil)
  (height nil)
  (durationseconds nil)
  (framerate nil)
  (framecount nil)
  (bitrate nil)
  (capturedat nil)
  (capturedevice nil)
  (location nil)
  (audiotracks nil)
  (frames nil)
  (transcript nil)
  (ocrobservations nil)
)
(defparameter +video-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("filename" . filename)
    ("originalName" . originalname)
    ("uri" . uri)
    ("storageUri" . storageuri)
    ("path" . path)
    ("fileKind" . filekind)
    ("mediaType" . mediatype)
    ("declaredMediaType" . declaredmediatype)
    ("sniffedMediaType" . sniffedmediatype)
    ("magicType" . magictype)
    ("detectedFormat" . detectedformat)
    ("extension" . extension)
    ("storageId" . storageid)
    ("bytesHash" . byteshash)
    ("bytesHashAlgorithm" . byteshashalgorithm)
    ("hashes" . hashes)
    ("trustFilenameExtension" . trustfilenameextension)
    ("compression" . compression)
    ("encrypted" . encrypted)
    ("passwordProtected" . passwordprotected)
    ("archive" . archive)
    ("archiveEntries" . archiveentries)
    ("quarantined" . quarantined)
    ("executable" . executable)
    ("parseStatus" . parsestatus)
    ("parser" . parser)
    ("parserVersion" . parserversion)
    ("parseError" . parseerror)
    ("containerFile" . containerfile)
    ("parentFile" . parentfile)
    ("derivedFiles" . derivedfiles)
    ("captureAction" . captureaction)
    ("extractedMetadata" . extractedmetadata)
    ("container" . container)
    ("codec" . codec)
    ("width" . width)
    ("height" . height)
    ("durationSeconds" . durationseconds)
    ("frameRate" . framerate)
    ("frameCount" . framecount)
    ("bitrate" . bitrate)
    ("capturedAt" . capturedat)
    ("captureDevice" . capturedevice)
    ("location" . location)
    ("audioTracks" . audiotracks)
    ("frames" . frames)
    ("transcript" . transcript)
    ("ocrObservations" . ocrobservations)
  ))

(defstruct video-frame
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (filename nil)
  (originalname nil)
  (uri nil)
  (storageuri nil)
  (path nil)
  (filekind nil)
  (mediatype nil)
  (declaredmediatype nil)
  (sniffedmediatype nil)
  (magictype nil)
  (detectedformat nil)
  (extension nil)
  (storageid nil)
  (byteshash nil)
  (byteshashalgorithm nil)
  (hashes nil)
  (trustfilenameextension nil)
  (compression nil)
  (encrypted nil)
  (passwordprotected nil)
  (archive nil)
  (archiveentries nil)
  (quarantined nil)
  (executable nil)
  (parsestatus nil)
  (parser nil)
  (parserversion nil)
  (parseerror nil)
  (containerfile nil)
  (parentfile nil)
  (derivedfiles nil)
  (captureaction nil)
  (extractedmetadata nil)
  (width nil)
  (height nil)
  (orientation nil)
  (capturedat nil)
  (capturedevice nil)
  (location nil)
  (exif nil)
  (ocrtext nil)
  (thumbnailfiles nil)
  (derivedimages nil)
  (video nil)
  (frameindex nil)
  (timestampms nil)
  (keyframe nil)
  (detectedobjects nil)
  (entityobservations nil)
  (faceobservations nil)
)
(defparameter +video-frame-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("filename" . filename)
    ("originalName" . originalname)
    ("uri" . uri)
    ("storageUri" . storageuri)
    ("path" . path)
    ("fileKind" . filekind)
    ("mediaType" . mediatype)
    ("declaredMediaType" . declaredmediatype)
    ("sniffedMediaType" . sniffedmediatype)
    ("magicType" . magictype)
    ("detectedFormat" . detectedformat)
    ("extension" . extension)
    ("storageId" . storageid)
    ("bytesHash" . byteshash)
    ("bytesHashAlgorithm" . byteshashalgorithm)
    ("hashes" . hashes)
    ("trustFilenameExtension" . trustfilenameextension)
    ("compression" . compression)
    ("encrypted" . encrypted)
    ("passwordProtected" . passwordprotected)
    ("archive" . archive)
    ("archiveEntries" . archiveentries)
    ("quarantined" . quarantined)
    ("executable" . executable)
    ("parseStatus" . parsestatus)
    ("parser" . parser)
    ("parserVersion" . parserversion)
    ("parseError" . parseerror)
    ("containerFile" . containerfile)
    ("parentFile" . parentfile)
    ("derivedFiles" . derivedfiles)
    ("captureAction" . captureaction)
    ("extractedMetadata" . extractedmetadata)
    ("width" . width)
    ("height" . height)
    ("orientation" . orientation)
    ("capturedAt" . capturedat)
    ("captureDevice" . capturedevice)
    ("location" . location)
    ("exif" . exif)
    ("ocrText" . ocrtext)
    ("thumbnailFiles" . thumbnailfiles)
    ("derivedImages" . derivedimages)
    ("video" . video)
    ("frameIndex" . frameindex)
    ("timestampMs" . timestampms)
    ("keyFrame" . keyframe)
    ("detectedObjects" . detectedobjects)
    ("entityObservations" . entityobservations)
    ("faceObservations" . faceobservations)
  ))

(defstruct audio
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (name nil)
  (filename nil)
  (originalname nil)
  (uri nil)
  (storageuri nil)
  (path nil)
  (filekind nil)
  (mediatype nil)
  (declaredmediatype nil)
  (sniffedmediatype nil)
  (magictype nil)
  (detectedformat nil)
  (extension nil)
  (storageid nil)
  (byteshash nil)
  (byteshashalgorithm nil)
  (hashes nil)
  (trustfilenameextension nil)
  (compression nil)
  (encrypted nil)
  (passwordprotected nil)
  (archive nil)
  (archiveentries nil)
  (quarantined nil)
  (executable nil)
  (parsestatus nil)
  (parser nil)
  (parserversion nil)
  (parseerror nil)
  (containerfile nil)
  (parentfile nil)
  (derivedfiles nil)
  (captureaction nil)
  (extractedmetadata nil)
  (codec nil)
  (container nil)
  (sampleratehz nil)
  (channels nil)
  (bitdepth nil)
  (durationseconds nil)
  (capturedat nil)
  (capturedevice nil)
  (location nil)
  (transcripts nil)
  (speakerobservations nil)
)
(defparameter +audio-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("name" . name)
    ("filename" . filename)
    ("originalName" . originalname)
    ("uri" . uri)
    ("storageUri" . storageuri)
    ("path" . path)
    ("fileKind" . filekind)
    ("mediaType" . mediatype)
    ("declaredMediaType" . declaredmediatype)
    ("sniffedMediaType" . sniffedmediatype)
    ("magicType" . magictype)
    ("detectedFormat" . detectedformat)
    ("extension" . extension)
    ("storageId" . storageid)
    ("bytesHash" . byteshash)
    ("bytesHashAlgorithm" . byteshashalgorithm)
    ("hashes" . hashes)
    ("trustFilenameExtension" . trustfilenameextension)
    ("compression" . compression)
    ("encrypted" . encrypted)
    ("passwordProtected" . passwordprotected)
    ("archive" . archive)
    ("archiveEntries" . archiveentries)
    ("quarantined" . quarantined)
    ("executable" . executable)
    ("parseStatus" . parsestatus)
    ("parser" . parser)
    ("parserVersion" . parserversion)
    ("parseError" . parseerror)
    ("containerFile" . containerfile)
    ("parentFile" . parentfile)
    ("derivedFiles" . derivedfiles)
    ("captureAction" . captureaction)
    ("extractedMetadata" . extractedmetadata)
    ("codec" . codec)
    ("container" . container)
    ("sampleRateHz" . sampleratehz)
    ("channels" . channels)
    ("bitDepth" . bitdepth)
    ("durationSeconds" . durationseconds)
    ("capturedAt" . capturedat)
    ("captureDevice" . capturedevice)
    ("location" . location)
    ("transcripts" . transcripts)
    ("speakerObservations" . speakerobservations)
  ))

(defstruct audio-segment
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (recording nil)
  (startms nil)
  (endms nil)
  (segmentfile nil)
  (channel nil)
)
(defparameter +audio-segment-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("recording" . recording)
    ("startMs" . startms)
    ("endMs" . endms)
    ("segmentFile" . segmentfile)
    ("channel" . channel)
  ))

(defstruct speech-segment
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (recording nil)
  (startms nil)
  (endms nil)
  (segmentfile nil)
  (channel nil)
  (text nil)
  (speaker nil)
  (transcript nil)
)
(defparameter +speech-segment-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("recording" . recording)
    ("startMs" . startms)
    ("endMs" . endms)
    ("segmentFile" . segmentfile)
    ("channel" . channel)
    ("text" . text)
    ("speaker" . speaker)
    ("transcript" . transcript)
  ))

(defstruct speaker
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (label nil)
  (person nil)
  (embeddingmodel nil)
  (embeddingref nil)
  (observationcount nil)
  (firstobservedat nil)
  (lastobservedat nil)
)
(defparameter +speaker-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("label" . label)
    ("person" . person)
    ("embeddingModel" . embeddingmodel)
    ("embeddingRef" . embeddingref)
    ("observationCount" . observationcount)
    ("firstObservedAt" . firstobservedat)
    ("lastObservedAt" . lastobservedat)
  ))

(defstruct speaker-observation
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (speaker nil)
  (recording nil)
  (segment nil)
  (startms nil)
  (endms nil)
  (embeddingmodel nil)
  (embeddingref nil)
)
(defparameter +speaker-observation-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("speaker" . speaker)
    ("recording" . recording)
    ("segment" . segment)
    ("startMs" . startms)
    ("endMs" . endms)
    ("embeddingModel" . embeddingmodel)
    ("embeddingRef" . embeddingref)
  ))

(defstruct speaker-turn
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (recording nil)
  (speaker nil)
  (segment nil)
  (turnindex nil)
  (startms nil)
  (endms nil)
  (text nil)
)
(defparameter +speaker-turn-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("recording" . recording)
    ("speaker" . speaker)
    ("segment" . segment)
    ("turnIndex" . turnindex)
    ("startMs" . startms)
    ("endMs" . endms)
    ("text" . text)
  ))

(defstruct transcript
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (sourcemedia nil)
  (transcriptfile nil)
  (text nil)
  (model nil)
  (modelversion nil)
  (actor nil)
  (startedat nil)
  (completedat nil)
  (segments nil)
  (speakerturns nil)
  (wordtimings nil)
)
(defparameter +transcript-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("sourceMedia" . sourcemedia)
    ("transcriptFile" . transcriptfile)
    ("text" . text)
    ("model" . model)
    ("modelVersion" . modelversion)
    ("actor" . actor)
    ("startedAt" . startedat)
    ("completedAt" . completedat)
    ("segments" . segments)
    ("speakerTurns" . speakerturns)
    ("wordTimings" . wordtimings)
  ))

(defstruct http-transaction
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (transactionid nil)
  (requestid nil)
  (connectionid nil)
  (parenttransactionid nil)
  (method nil)
  (url nil)
  (scheme nil)
  (host nil)
  (port nil)
  (path nil)
  (query nil)
  (httpversion nil)
  (requestheaders nil)
  (requestbodysize nil)
  (requestbodyhash nil)
  (requestbodyartifacturi nil)
  (responsestatus nil)
  (responsereason nil)
  (responseheaders nil)
  (responsebodysize nil)
  (responsebodyhash nil)
  (responsebodyartifacturi nil)
  (startedat nil)
  (endedat nil)
  (durationms nil)
  (remoteip nil)
  (remoteport nil)
  (tlsversion nil)
  (tlscipher nil)
  (tlsservername nil)
  (certificatesha256 nil)
  (redirectfromid nil)
  (redirecttoid nil)
  (captureactoruri nil)
  (challengestatus nil)
  (captchadetectionid nil)
  (captchacapability nil)
  (browsersessionref nil)
  (networkcontextref nil)
  (proxyactoruri nil)
  (redactedheaders nil)
  (bodycapturepolicy nil)
  (requesttruncated nil)
  (responsetruncated nil)
)
(defparameter +http-transaction-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("transactionId" . transactionid)
    ("requestId" . requestid)
    ("connectionId" . connectionid)
    ("parentTransactionId" . parenttransactionid)
    ("method" . method)
    ("url" . url)
    ("scheme" . scheme)
    ("host" . host)
    ("port" . port)
    ("path" . path)
    ("query" . query)
    ("httpVersion" . httpversion)
    ("requestHeaders" . requestheaders)
    ("requestBodySize" . requestbodysize)
    ("requestBodyHash" . requestbodyhash)
    ("requestBodyArtifactUri" . requestbodyartifacturi)
    ("responseStatus" . responsestatus)
    ("responseReason" . responsereason)
    ("responseHeaders" . responseheaders)
    ("responseBodySize" . responsebodysize)
    ("responseBodyHash" . responsebodyhash)
    ("responseBodyArtifactUri" . responsebodyartifacturi)
    ("startedAt" . startedat)
    ("endedAt" . endedat)
    ("durationMs" . durationms)
    ("remoteIp" . remoteip)
    ("remotePort" . remoteport)
    ("tlsVersion" . tlsversion)
    ("tlsCipher" . tlscipher)
    ("tlsServerName" . tlsservername)
    ("certificateSha256" . certificatesha256)
    ("redirectFromId" . redirectfromid)
    ("redirectToId" . redirecttoid)
    ("captureActorUri" . captureactoruri)
    ("challengeStatus" . challengestatus)
    ("captchaDetectionId" . captchadetectionid)
    ("captchaCapability" . captchacapability)
    ("browserSessionRef" . browsersessionref)
    ("networkContextRef" . networkcontextref)
    ("proxyActorUri" . proxyactoruri)
    ("redactedHeaders" . redactedheaders)
    ("bodyCapturePolicy" . bodycapturepolicy)
    ("requestTruncated" . requesttruncated)
    ("responseTruncated" . responsetruncated)
  ))

(defstruct web-capture
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (captureid nil)
  (url nil)
  (finalurl nil)
  (title nil)
  (statuscode nil)
  (browser nil)
  (browserversion nil)
  (viewportwidth nil)
  (viewportheight nil)
  (devicescalefactor nil)
  (screenshoturi nil)
  (screenshothash nil)
  (screenshotmediatype nil)
  (screenshotsizebytes nil)
  (domartifacturi nil)
  (domartifacthash nil)
  (domartifactsizebytes nil)
  (capturedat nil)
  (httptransactionids nil)
  (captureactoruri nil)
  (challengestatus nil)
  (captchadetectionid nil)
  (captchacapability nil)
  (browsersessionref nil)
  (networkcontextref nil)
  (proxyactoruri nil)
)
(defparameter +web-capture-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("captureId" . captureid)
    ("url" . url)
    ("finalUrl" . finalurl)
    ("title" . title)
    ("statusCode" . statuscode)
    ("browser" . browser)
    ("browserVersion" . browserversion)
    ("viewportWidth" . viewportwidth)
    ("viewportHeight" . viewportheight)
    ("deviceScaleFactor" . devicescalefactor)
    ("screenshotUri" . screenshoturi)
    ("screenshotHash" . screenshothash)
    ("screenshotMediaType" . screenshotmediatype)
    ("screenshotSizeBytes" . screenshotsizebytes)
    ("domArtifactUri" . domartifacturi)
    ("domArtifactHash" . domartifacthash)
    ("domArtifactSizeBytes" . domartifactsizebytes)
    ("capturedAt" . capturedat)
    ("httpTransactionIds" . httptransactionids)
    ("captureActorUri" . captureactoruri)
    ("challengeStatus" . challengestatus)
    ("captchaDetectionId" . captchadetectionid)
    ("captchaCapability" . captchacapability)
    ("browserSessionRef" . browsersessionref)
    ("networkContextRef" . networkcontextref)
    ("proxyActorUri" . proxyactoruri)
  ))

(defstruct pcap-capture
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (captureid nil)
  (file nil)
  (fileuri nil)
  (filesha256 nil)
  (format nil)
  (filesizebytes nil)
  (packetcount nil)
  (capturestart nil)
  (captureend nil)
  (durationseconds nil)
  (capturesoftware nil)
  (sensor nil)
  (interfaces nil)
  (protocolhierarchy nil)
  (analysisactoruri nil)
)
(defparameter +pcap-capture-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("captureId" . captureid)
    ("file" . file)
    ("fileUri" . fileuri)
    ("fileSha256" . filesha256)
    ("format" . format)
    ("fileSizeBytes" . filesizebytes)
    ("packetCount" . packetcount)
    ("captureStart" . capturestart)
    ("captureEnd" . captureend)
    ("durationSeconds" . durationseconds)
    ("captureSoftware" . capturesoftware)
    ("sensor" . sensor)
    ("interfaces" . interfaces)
    ("protocolHierarchy" . protocolhierarchy)
    ("analysisActorUri" . analysisactoruri)
  ))

(defstruct network-conversation
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (conversationid nil)
  (capture nil)
  (layer nil)
  (endpointa nil)
  (endpointb nil)
  (apackets nil)
  (bpackets nil)
  (abytes nil)
  (bbytes nil)
  (protocols nil)
  (firstframenum nil)
  (lastframenum nil)
  (startedat nil)
  (endedat nil)
  (durationseconds nil)
)
(defparameter +network-conversation-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("conversationId" . conversationid)
    ("capture" . capture)
    ("layer" . layer)
    ("endpointA" . endpointa)
    ("endpointB" . endpointb)
    ("aPackets" . apackets)
    ("bPackets" . bpackets)
    ("aBytes" . abytes)
    ("bBytes" . bbytes)
    ("protocols" . protocols)
    ("firstFrameNum" . firstframenum)
    ("lastFrameNum" . lastframenum)
    ("startedAt" . startedat)
    ("endedAt" . endedat)
    ("durationSeconds" . durationseconds)
  ))

(defstruct network-device
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (deviceid nil)
  (deviceclass nil)
  (hardwareclass nil)
  (vendor nil)
  (model nil)
  (firmwareversion nil)
  (serialnumber nil)
  (cpe nil)
  (parentdevice nil)
  (site nil)
  (managementaddresses nil)
  (hostedhosts nil)
  (discoveredby nil)
  (firstseen nil)
  (lastseen nil)
)
(defparameter +network-device-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("deviceId" . deviceid)
    ("deviceClass" . deviceclass)
    ("hardwareClass" . hardwareclass)
    ("vendor" . vendor)
    ("model" . model)
    ("firmwareVersion" . firmwareversion)
    ("serialNumber" . serialnumber)
    ("cpe" . cpe)
    ("parentDevice" . parentdevice)
    ("site" . site)
    ("managementAddresses" . managementaddresses)
    ("hostedHosts" . hostedhosts)
    ("discoveredBy" . discoveredby)
    ("firstSeen" . firstseen)
    ("lastSeen" . lastseen)
  ))

(defstruct wireless-network
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (bssid nil)
  (ssid nil)
  (security nil)
  (authmode nil)
  (ciphersuite nil)
  (channel nil)
  (frequencymhz nil)
  (band nil)
  (signaldbm nil)
  (vendor nil)
  (clientcount nil)
  (sourcenetworkid nil)
  (hostedhost nil)
  (location nil)
  (locationaccuracymeters nil)
  (observations nil)
  (firstseen nil)
  (lastseen nil)
)
(defparameter +wireless-network-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("bssid" . bssid)
    ("ssid" . ssid)
    ("security" . security)
    ("authMode" . authmode)
    ("cipherSuite" . ciphersuite)
    ("channel" . channel)
    ("frequencyMhz" . frequencymhz)
    ("band" . band)
    ("signalDbm" . signaldbm)
    ("vendor" . vendor)
    ("clientCount" . clientcount)
    ("sourceNetworkId" . sourcenetworkid)
    ("hostedHost" . hostedhost)
    ("location" . location)
    ("locationAccuracyMeters" . locationaccuracymeters)
    ("observations" . observations)
    ("firstSeen" . firstseen)
    ("lastSeen" . lastseen)
  ))

(defstruct wireless-station
  (id nil)
  (rev nil)
  (dataset nil)
  (dtype nil)
  (schemaversion nil)
  (externalids nil)
  (aliases nil)
  (sources nil)
  (sourceurls nil)
  (sourcerecordids nil)
  (sourcekinds nil)
  (sourcelicense nil)
  (sourceterms nil)
  (sourceretrievedat nil)
  (collectedat nil)
  (observedat nil)
  (firstseenat nil)
  (lastseenat nil)
  (createdat nil)
  (updatedat nil)
  (validfrom nil)
  (validuntil nil)
  (expiresat nil)
  (collector nil)
  (collectorversion nil)
  (collectionmethod nil)
  (collectionstatus nil)
  (runid nil)
  (correlationid nil)
  (causationid nil)
  (parentid nil)
  (rootid nil)
  (confidence nil)
  (confidencebasis nil)
  (qualityscore nil)
  (completenessscore nil)
  (verificationstatus nil)
  (verifiedat nil)
  (verifiedby nil)
  (provenance nil)
  (chainofcustody nil)
  (transformhistory nil)
  (labels nil)
  (tags nil)
  (topics nil)
  (language nil)
  (jurisdiction nil)
  (countrycode nil)
  (regioncode nil)
  (timezone nil)
  (sensitivity nil)
  (visibility nil)
  (owner nil)
  (accesscontrol nil)
  (legalbasis nil)
  (retentionpolicy nil)
  (contenttype nil)
  (encoding nil)
  (sizebytes nil)
  (contenthash nil)
  (hashalgorithm nil)
  (normalizedhash nil)
  (raw nil)
  (rawcontent nil)
  (notes nil)
  (deleted nil)
  (tombstonereason nil)
  (extensions nil)
  (mac nil)
  (stationtype nil)
  (lastbssid nil)
  (probessids nil)
  (signaldbm nil)
  (vendor nil)
  (packets nil)
  (databytes nil)
  (observations nil)
  (sourcedevice nil)
  (firstseen nil)
  (lastseen nil)
)
(defparameter +wireless-station-wire-fields+
  '(
    ("id" . id)
    ("rev" . rev)
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("schemaVersion" . schemaversion)
    ("externalIds" . externalids)
    ("aliases" . aliases)
    ("sources" . sources)
    ("sourceUrls" . sourceurls)
    ("sourceRecordIds" . sourcerecordids)
    ("sourceKinds" . sourcekinds)
    ("sourceLicense" . sourcelicense)
    ("sourceTerms" . sourceterms)
    ("sourceRetrievedAt" . sourceretrievedat)
    ("collectedAt" . collectedat)
    ("observedAt" . observedat)
    ("firstSeenAt" . firstseenat)
    ("lastSeenAt" . lastseenat)
    ("createdAt" . createdat)
    ("updatedAt" . updatedat)
    ("validFrom" . validfrom)
    ("validUntil" . validuntil)
    ("expiresAt" . expiresat)
    ("collector" . collector)
    ("collectorVersion" . collectorversion)
    ("collectionMethod" . collectionmethod)
    ("collectionStatus" . collectionstatus)
    ("runId" . runid)
    ("correlationId" . correlationid)
    ("causationId" . causationid)
    ("parentId" . parentid)
    ("rootId" . rootid)
    ("confidence" . confidence)
    ("confidenceBasis" . confidencebasis)
    ("qualityScore" . qualityscore)
    ("completenessScore" . completenessscore)
    ("verificationStatus" . verificationstatus)
    ("verifiedAt" . verifiedat)
    ("verifiedBy" . verifiedby)
    ("provenance" . provenance)
    ("chainOfCustody" . chainofcustody)
    ("transformHistory" . transformhistory)
    ("labels" . labels)
    ("tags" . tags)
    ("topics" . topics)
    ("language" . language)
    ("jurisdiction" . jurisdiction)
    ("countryCode" . countrycode)
    ("regionCode" . regioncode)
    ("timezone" . timezone)
    ("sensitivity" . sensitivity)
    ("visibility" . visibility)
    ("owner" . owner)
    ("accessControl" . accesscontrol)
    ("legalBasis" . legalbasis)
    ("retentionPolicy" . retentionpolicy)
    ("contentType" . contenttype)
    ("encoding" . encoding)
    ("sizeBytes" . sizebytes)
    ("contentHash" . contenthash)
    ("hashAlgorithm" . hashalgorithm)
    ("normalizedHash" . normalizedhash)
    ("raw" . raw)
    ("rawContent" . rawcontent)
    ("notes" . notes)
    ("deleted" . deleted)
    ("tombstoneReason" . tombstonereason)
    ("extensions" . extensions)
    ("mac" . mac)
    ("stationType" . stationtype)
    ("lastBssid" . lastbssid)
    ("probeSsids" . probessids)
    ("signalDbm" . signaldbm)
    ("vendor" . vendor)
    ("packets" . packets)
    ("dataBytes" . databytes)
    ("observations" . observations)
    ("sourceDevice" . sourcedevice)
    ("firstSeen" . firstseen)
    ("lastSeen" . lastseen)
  ))

(defstruct upsert-document
  (document nil)
  (dataset nil)
  (runid nil)
)
(defparameter +upsert-document-wire-fields+
  '(
    ("document" . document)
    ("dataset" . dataset)
    ("runId" . runid)
  ))

(defstruct query-documents
  (dataset nil)
  (dtype nil)
  (filters nil)
  (limit nil)
  (cursor nil)
)
(defparameter +query-documents-wire-fields+
  '(
    ("dataset" . dataset)
    ("dtype" . dtype)
    ("filters" . filters)
    ("limit" . limit)
    ("cursor" . cursor)
  ))

(defstruct schedule-target
  (target nil)
  (requestedby nil)
)
(defparameter +schedule-target-wire-fields+
  '(
    ("target" . target)
    ("requestedBy" . requestedby)
  ))

(defstruct schedule-mission
  (mission nil)
  (requestedby nil)
)
(defparameter +schedule-mission-wire-fields+
  '(
    ("mission" . mission)
    ("requestedBy" . requestedby)
  ))

(defstruct query-spatial
  (dataset nil)
  (mode nil)
  (geometry nil)
  (boundingbox nil)
  (referencepoint nil)
  (maximumdistancemeters nil)
  (dtype nil)
  (filters nil)
  (attime nil)
  (limit nil)
  (cursor nil)
)
(defparameter +query-spatial-wire-fields+
  '(
    ("dataset" . dataset)
    ("mode" . mode)
    ("geometry" . geometry)
    ("boundingBox" . boundingbox)
    ("referencePoint" . referencepoint)
    ("maximumDistanceMeters" . maximumdistancemeters)
    ("dtype" . dtype)
    ("filters" . filters)
    ("atTime" . attime)
    ("limit" . limit)
    ("cursor" . cursor)
  ))

(defstruct actor-manifest-announcement
  (manifest nil)
  (announcedat nil)
)
(defparameter +actor-manifest-announcement-wire-fields+
  '(
    ("manifest" . manifest)
    ("announcedAt" . announcedat)
  ))
