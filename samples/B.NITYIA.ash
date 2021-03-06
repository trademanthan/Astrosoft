                   minOccurs="0" maxOccurs="unbounded">
                <xsd:annotation>
                  <xsd:documentation>

                    File containing mapping information. Loaded as a resource 
                    by the persistence provider.

                  </xsd:documentation>
                </xsd:annotation>
              </xsd:element>

              <!-- **************************************************** -->

              <xsd:element name="jar-file" type="xsd:string" 
                           minOccurs="0" maxOccurs="unbounded">
                <xsd:annotation>
                  <xsd:documentation>

                    Jar file that should be scanned for entities. 
                    Not applicable to Java SE persistence units.

                  </xsd:documentation>
                </xsd:annotation>
              </xsd:element>

              <!-- **************************************************** -->

              <xsd:element name="class" type="xsd:string" 
                           minOccurs="0" maxOccurs="unbounded">
                <xsd:annotation>
                  <xsd:documentation>

                    Class to scan for annotations.  It should be annotated 
                    with either @Entity, @Embeddable or @MappedSuperclass.

                  </xsd:documentation>
                </xsd:annotation>
              </xsd:element>

              <!-- **************************************************** -->

              <xsd:element name="exclude-unlisted-classes" type="xsd:boolean" 
                           default="false" minOccurs="0">
                <xsd:annotation>
                  <xsd:documentation>

                    When set to true then only listed classes and jars will 
                    be scanned for persistent classes, otherwise the enclosing 
                    jar or directory will also be scanned. Not applicable to 
                    Java SE persistence units.

                  </xsd:documentation>
                </xsd:annotation>
              </xsd:element>

              <!-- **************************************************** -->

              <xsd:element name="properties" minOccurs="0">
                <xsd:annotation>
                  <xsd:documentation>

                    A list of vendor-specific properties.

                  </xsd:documentation>
                </xsd:annotation>
                <xsd:complexType>
                  <xsd:sequence>
                    <xsd:element name="property" 
                                 minOccurs="0" maxOccurs="unbounded">
                      <xsd:annotation>
                        <xsd:documentation>
                          A name-value pair.
                        </xsd:documentation>
                      </xsd:annotation>
                      <xsd:complexType>
                        <xsd:attribute name="name" type="xsd:string" 
                                       use="required"/>
                        <xsd:attribute name="value" type="xsd:string" 
                                       use="required"/>
                      </xsd:complexType>
                    </xsd:element>
                  </xsd:sequence>
                </xsd:complexType>
              </xsd:element>

            </xsd:sequence>

            <!-- **************************************************** -->

            <xsd:attribute name="name" type="xsd:string" use="required">
              <xsd:annotation>
                <xsd:documentation>

                  Name used in code to reference this persistence unit.

                </xsd:documentation>
              </xsd:annotation>
            </xsd:attribute>

            <!-- **************************************************** -->

            <xsd:attribute name="transaction-type" 
                           type="persistence:persistence-unit-transaction-type">
              <xsd:annotation>
                <xsd:documentation>

                  Type of transactions used by EntityManagers from this 
                  persistence unit.

                </xsd:documentation>
              </xsd:annotation>
            </xsd:attribute>

          </xsd:complexType>
        </xsd:element>
      </xsd:sequence>
      <xsd:attribute name="version" type="persistence:versionType" 
                     fixed="1.0" use="required"/>
    </xsd:complexType>
  </xsd:element>

  <!-- **************************************************** -->

  <xsd:simpleType name="persistence-unit-transaction-type">
    <xsd:annotation>
      <xsd:documentation>

        public enum TransactionType { JTA, RESOURCE_LOCAL };

      </xsd:documentation>
    </xsd:annotation>
    <xsd:restriction base="xsd:token">
      <xsd:enumeration value="JTA"/>
      <xsd:enumeration value="RESOURCE_LOCAL"/>
    </xsd:restriction>
  </xsd:simpleType>

</xsd:schema>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    