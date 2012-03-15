def sha1_digest(str, salt)
  Digest::SHA1.hexdigest("#{salt}_#{str}")
end

