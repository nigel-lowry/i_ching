module KnowsTheDomain
  def my_monogram_values
    @my_monogram_values ||= caster.cast
  end

  def caster
    @my_caster ||= Caster.new
  end
end

World(KnowsTheDomain)