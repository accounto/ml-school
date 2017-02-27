function show_data(X)
  scatter(X[ipos,1], X[ipos,2], color=:blue, label="positive", marker=(:circle, 8, stroke(0, :blue)))
  scatter!(X[ineg,1], X[ineg,2], color=:red, label="negative", marker=(:circle, 8, stroke(0, :red)))
end

function show_theta!(theta)
  plot!([0,theta[1]],[0, theta[2]], color=:black, width=2, label="theta")
end

function show_predicted_labels!(X, theta)
  yhat = sign(X * theta)
                    
  ipos = yhat .== 1.0
  ineg = yhat .== -1.0
                            
  accuracy = mean(yhat .== y) * 100
  println("Classification accuracy: $accuracy %")
  
  scatter!(X[ipos,1], X[ipos,2], color=:blue, label="predicted-pos", m=(:circle, 3, stroke(0)))
  scatter!(X[ineg,1], X[ineg,2], color=:red, label="predicted-neg", m=(:circle, 3, stroke(0)))
end

