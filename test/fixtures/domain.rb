class DomainFixture
  def self.name
    "#{Faker::Internet.domain_word}.com.br"
  end

  def self.info brorg, registrant, pw
    domain = {
      brorg: brorg,
      nameservers: [
        {
          name: "ns.#{Faker::Internet.domain_name}",
          ipv4: Faker::Internet.ip_v6_address
        },
        {
          name: "ns.#{Faker::Internet.domain_name}",
          ipv4: Faker::Internet.ip_v4_address,
          ipv6: Faker::Internet.ip_v6_address
        }
      ],
      registrant: registrant,
      auth_info: {pw: pw}
    }

    domain
  end
end
