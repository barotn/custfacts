Facter.add(:provider) do
  setcode do
    custprovider = Facter.value('hostname').to_s
    provider = custprovider.split('-')[0][0,2]
    if provider == 'aw'
      'aws'
    elsif provider == 'az'
      'azure'
    else
      nil
    end
  end
end
