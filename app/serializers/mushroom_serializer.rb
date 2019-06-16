class MushroomSerializer < ActiveModel::Serializer
  attributes  :id, :latin_name, :common_name, :habitat, :region, :fairy_rings, :characteristics, :img_url, :confused_with

  #フロントエンドからバックエンドへ、データの受け渡し
  #フロントエンドとバックエンドで言語が違うので、共通言語であるJSONを使って、データを受け渡す

  def common_name
    JSON.parse(object.common_name)
  end

  def confused_with
    JSON.parse(object.confused_with)
  end

  def region
    JSON.parse(object.region)
  end

  def characteristics
    eval(object.characteristics)
  end
end
