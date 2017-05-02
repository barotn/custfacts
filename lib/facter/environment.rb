Facter.add(:environment) do
  setcode do
    custenv = Facter.value('hostname').to_s
    custenv = custenv[5,1]
    if custenv == 'd'
      'development'
    elsif custenv == 't'
      'test'
    elsif custenv == 'u'
      'preproduction'
    elsif custenv == 'p'
      'production'
    else
      'nil'
    end
  end
end
