<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!-- Indirector Set                                                -->
<!-- Contains zero or more indirector topic. Serves as a convenience -->
<!-- for creating single XML documents that contain multiple indirectors. -->
<!-- The indirector set does not affect the semantics of the indirectors -->
<!-- it contains.                                                  -->
<!-- Copyright (c) 2014 W. Eliot Kimber                            -->
<!-- ============================================================= -->
<!--                                                               -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % indirectorset
                       "indirectorset"                               >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % indirectorset-info-types
              "no-topic-nesting"
>
<!--                    LONG NAME: Indirector                      -->
<!ENTITY % indirectorset.content
                       "((%title;),
                         (%titlealts;,
)?,
                         (%prolog;,
)?,
                         (%indirectorset-info-types;,
)*,
)"
>
<!ENTITY % indirectorset.attributes
              "id
                          ID
                                    #REQUIRED
               %conref-atts;
               %select-atts;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED

"
>
<!ELEMENT  indirectorset %indirectorset.content;>
<!ATTLIST  indirectorset %indirectorset.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  indirectorset %global-atts;  class CDATA "- topic/topic indirectorset/indirectorset ">

<!-- ================== End of Indirector Set ==================== -->
 