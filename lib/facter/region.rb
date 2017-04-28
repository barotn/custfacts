Facter.add(:region) do
  setcode do
    custregion = Facter.value('hostname').to_s
    region = custregion.split('-')[0][2,2]
    if region == 'we'
      'eu-west'
    elsif region == 'ce'
      'eu-central'
    else
      'region not specified'
    end
  end
end 
