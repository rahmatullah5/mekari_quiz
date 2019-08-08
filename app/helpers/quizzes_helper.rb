module QuizzesHelper
  def answer_alert(status)
    if status.eql?('success')
      "
      <div class='alert alert-success' role='alert'>
      Wooo, That's the correct answer.
      </div>
      "
    else
      "
      <div class='alert alert-danger' role='alert'>
      Sorry, you should try another answer.
      </div>
      "
    end
  end
end
