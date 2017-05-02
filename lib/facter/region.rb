Facter.add(:region) do
  setcode do
    custregion = Facter.value('hostname').to_s
    region = custregion.split('-')[0][2,2]
    if region == 'we'
      'euwest'
    elsif region == 'ce'
      'eucentral'
    else
      'region not specified'
    end
  end
end 
