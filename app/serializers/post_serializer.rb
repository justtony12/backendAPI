class PostSerializer < ActiveModel::Serializer
  attributes :id, :caption, :art, :art_format

  def art_format
    return unless object.art.attached?
    object.art.blob.attributes
      .slice('filename', 'byte_size')
      .merge(url: object.image_url)
      .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

end
