<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!-- Indirector Topic                                              -->
<!-- Represents an indirect link to a non-topic element.           -->
<!-- The body of topic contains one or more <indirectElementRef>   -->
<!-- elements. Each indirectElementRef must point to a non-topic   -->
<!-- element that is the ultimate target of any reference to the   -->
<!-- indirector topic.                                             -->
<!-- When there are multiple indirectElementRef elements, they     -->
<!-- should have distinct applicability conditions. When more than -->
<!-- one indirector is present following filtering or effective    -->
<!-- per the current filtering conditions, processors should use the first one -->
<!-- in document order.                                            -->
<!-- Copyright (c) 2014 W. Eliot Kimber                            -->
<!-- ============================================================= -->
<!--                                                               -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % indirector  "indirector"                                  >
<!ENTITY % indirectorBody
                       "indirectorBody"                              >
<!ENTITY % indirectElementRef
                       "indirectElementRef"                          >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % indirector-info-types
              "no-topic-nesting"
>
<!--                    LONG NAME: Indirector                      -->
<!ENTITY % indirector.content
                       "((%title;),
                         (%titlealts;)?,
                         (%prolog;)?,
                         (%indirectorBody;)?)"
>
<!ENTITY % indirector.attributes
              "id
                          ID
                                    #REQUIRED
               %conref-atts;
               %select-atts;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  indirector %indirector.content;>
<!ATTLIST  indirector %indirector.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Indirector Body                 -->
<!ENTITY % indirectorBody.content
                       "(%indirectElementRef; |
                         %data; |
                         %data-about;)*"
>
<!ENTITY % indirectorBody.attributes
              "%id-atts;
               %localization-atts;
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  indirectorBody %indirectorBody.content;>
<!ATTLIST  indirectorBody %indirectorBody.attributes;>


<!--                    LONG NAME: Indirect Element Ref            -->
<!ENTITY % indirectElementRef.content
                       "(%xreftext.cnt; |
                         %desc;)*"
>
<!ENTITY % indirectElementRef.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  indirectElementRef %indirectElementRef.content;>
<!ATTLIST  indirectElementRef %indirectElementRef.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  indirector   %global-atts;  class CDATA "- topic/topic indirector/indirector ">
<!ATTLIST  indirectorBody %global-atts;  class CDATA "- topic/body indirector/indirectorbody ">
<!ATTLIST  indirectElementRef %global-atts;  class CDATA "- topic/xref indirector/indirectElementRef ">

<!-- ================== End of Indirector Topic ==================== -->
 