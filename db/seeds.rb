# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(title: 'Ruby基础教程',
                description:
                    %{<p>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                      <h1>Ruby新手入门最好的教材</h1>
                    </p>},
                image_url: 'ruby.jpg',
                price: 38.99)
# ...
Product.create!(title: 'Ruby基础教程',
                description:
                    %{<p>
                      <h1>Ruby新手入门最好的教材</h1>
                    </p>},
                image_url: 'ruby.jpg',
                price: 38.99)
# ...
Product.create!(title: 'Ruby基础教程',
                description:
                    %{<p>
                      <h1>Ruby新手入门最好的教材</h1>
                    </p>},
                image_url: 'ruby.jpg',
                price: 38.99)
# ...