module KnowsTheDomain
  def my_monogram_values
    @my_monogram_values ||= my_caster.cast
  end

  def my_caster
    @my_caster ||= Caster.new
  end
end

World(KnowsTheDomain)