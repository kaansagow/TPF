create xml schema collection [dbo].[Reservas] as
N'<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="reservas">
    <xs:complexType>
      <xs:sequence>
        <xs:element maxOccurs="unbounded" name="item">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="id" type="xs:unsignedByte" />
              <xs:element name="reserva" type="xs:string" />
              <xs:element name="telefone" type="xs:unsignedInt" />
              <xs:element name="email" type="xs:string" />
              <xs:element name="data" type="xs:string" />
              <xs:element name="pessoas" type="xs:unsignedByte" />
            </xs:sequence>
            <xs:attribute name="id" type="xs:unsignedByte" use="required" />
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>'
go