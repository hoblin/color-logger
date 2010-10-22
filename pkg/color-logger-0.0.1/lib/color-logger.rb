class Object
  def cdebug(tag=nil)
    RAILS_DEFAULT_LOGGER.info "\n\033[1;33;44m#{tag}\033[1;32;40m#{self.class} \033[0;30;47m#{self.inspect}\033[0m"
  end
  def clog(tag=nil)
    puts "\n\033[1;33;44m#{tag}\033[1;32;40m#{self.class} \033[0;30;47m#{self.inspect}\033[0m"
  end
  def prepare_dump(tag=nil)
    @c_d_stack = []
    @c_d_stack << "\n\033[1;33;44m#{tag}\033[1;32;44m #{self.class}\033[0m\n"
    if self.class == Class
      @c_d_stack << "\033[1;34;47mMethods\033[0m\n"
      self.methods.sort.each{|m|@c_d_stack << "\t\033[1;36;40m#{m}\033[0m\n"}
    end
    if self.methods.include?('each_key')
      @c_d_stack << "\033[1;34;47mPairs\033[0m\n"
      self.each_key{|k|@c_d_stack << "\t\033[0;32;40m#{k} => \t\t\033[0;37;40m#{self[k].inspect}\033[0m\n"}
    end
    if self.methods.include?('each_index')
      @c_d_stack << "\033[1;34;47mValues\033[0m\n"
      self.each_index{|k|@c_d_stack << "\t\033[0;32;40m#{k}:\t\t\033[0;37;40m#{self[k].inspect}\033[0m\n"}
    end
    if self.methods.include?('attributes')
      @c_d_stack << "\033[1;34;47mAttributes\033[0m\n"
      self.attribute_names.sort.each{|a|@c_d_stack << "\t\033[0;35;40m#{a}:\t\t\033[0;37;40m#{self.send(a).inspect}\033[0m\n"}
    end
    @c_d_stack
  end

  def to_table
    table = [[],[]]
    self.attribute_names.sort.each do |name| 
      unless self.send(name).blank?
        table[0] << name
        table[1] << self.send(name)
      end
    end
    puts '| '+table[0].join(' | ')+' |'
    puts '| '+table[1].join(' | ')+' |'
  end

  def cdump(tag=nil)
    RAILS_DEFAULT_LOGGER.info self.prepare_dump(tag).join("\n")
    @c_d_stack = []
  end

  def cputs(tag=nil)
    puts self.prepare_dump(tag).join(' ')
    @c_d_stack = []
    nil
  end
end