## PROBLEM

Below is the data of visits to the stadium on particular dates with count of people visited on that date.
<table>
   <tr>      <th>id</th>      <th>visit_date</th>      <th>people</th>   </tr>
   <tr>      <td>1</td>      <td>2017-01-01</td>      <td>10</td>   </tr>
   <tr>      <td>2</td>      <td>2017-01-02</td>      <td>109</td>   </tr>
   <tr>      <td>3</td>      <td>2017-01-03</td>      <td>150</td>   </tr>
   <tr>      <td>4</td>      <td>2017-01-04</td>      <td>99</td>   </tr>
   <tr>      <td>5</td>      <td>2017-01-05</td>      <td>145</td>   </tr>
   <tr>      <td>6</td>      <td>2017-01-06</td>      <td>1,455</td>   </tr>
   <tr>      <td>7</td>      <td>2017-01-07</td>      <td>199</td>   </tr>
   <tr>      <td>8</td>      <td>2017-01-09</td>      <td>188</td>   </tr>
</table>


### We need to find the dates of visits where more than 100 people visited consecutively 3 days or more than 3 days.

## Output
If we see the data, more than 100 people visited on 2nd, 3rd, 5th, 6th, 7th and 9th.
But 3 or more than 3 consecutive days from above are only 5th, 6th and 7th.

So our output should result only below rows:

<table>
   <tr>      <th>id</th>      <th>visit_date</th>      <th>people</th>   </tr>
   <tr>      <td>5</td>      <td>2017-01-05</td>      <td>145</td>   </tr>
   <tr>      <td>6</td>      <td>2017-01-06</td>      <td>1,455</td>   </tr>
   <tr>      <td>7</td>      <td>2017-01-07</td>      <td>199</td>   </tr>
</table>
