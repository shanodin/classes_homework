class Student

  # attr_reader( :name, :cohort, :catchphrase )
  # attr_writer( :name, :cohort, :catchphrase )

  def initialize( name, cohort, catchphrase )
    @name = name
    @cohort = cohort
    @catchphrase = catchphrase
  end

# Getters
  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def catchphrase
    return @catchphrase
  end

# Setters
  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def set_catchphrase(catchphrase)
    @catchphrase = catchphrase
  end

# Other methods
  def talk_to_me
    return catchphrase
  end

  def fave_lang(language)
    return "My favourite language is #{language}."
  end







end
