class Team < ApplicationRecord

  mount_uploader :team_picture, PhotoUploader

  has_many :members, dependent: :destroy
  has_many :users, through: :members
  belongs_to :city
  has_many :answers, dependent: :destroy
  has_many :team_challenges, dependent: :destroy
  has_many :challenges, through: :team_challenges

  after_create :assign_challenges

  validates :title, presence: true
  validates :end_date, presence: true
  validates :start_date, presence: true


  def has_team_member?(user)
    users.include?(user)
  end

  def assign_challenges

    trip_length = self.end_date - self.start_date #transform string en date

    # trip_length = string_to_date(start_date).to_i - string_to_date(end_date).to_i


    # if trip_length > 3
    #   num_challenge = 20
    # else trip_length < 3
    #   num_challenge = 50
    # end

    # challenges = Challenge.where(city_id: self.city_id).limit(num_challenge)
    challenges = Challenge.where(city_id: self.city_id)
    challenges.each do |challenge|
      TeamChallenge.create(team_id: self.id, challenge_id: challenge.id)
    end
    #team.challenges = tous les challenges de la self team!

  end

  # def string_to_date (date)
  #   date = "2011-06-02T23:59:59+05:30".gsub(/T.*/, '')
  #   DateTime.parse(date)
  # end

  def in_trip?
    start_date.to_date <= Date.today && end_date.to_date >= Date.today
  end

  def score
    total_score = 0
    self.team_challenges.each do |team_challenge|
      if !team_challenge.answer.nil?
        if team_challenge.answer.status == Answer::COMPLETED
          total_score += team_challenge.challenge.score
        end
      end
    end
    total_score
  end
end
