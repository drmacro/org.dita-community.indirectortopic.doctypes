<?xml version="1.0" encoding="UTF-8"?>
<!-- Defines elements for use with the indirector topic type.      -->
<!-- Provides the indirect-xref-anchor element, which serves as a target -->
<!-- for indirect xrefs.                                           -->
<!-- Copyright (c) 2014 Eliot Kimber                               -->
<!--                                                               -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % indirect-xref-anchor
                       "indirect-xref-anchor"                        >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Indirect XRef Anchor            -->
<!ENTITY % indirect-xref-anchor.content
                       "(%data; |
                         %data-about;)*"
>
<!ENTITY % indirect-xref-anchor.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  indirect-xref-anchor %indirect-xref-anchor.content;>
<!ATTLIST  indirect-xref-anchor %indirect-xref-anchor.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  indirect-xref-anchor %global-atts;  class CDATA "+ topic/ph indirector-d/indirect-xref-anchor ">

<!-- ================== End of DITA Community Indirector Domain ==================== -->
 