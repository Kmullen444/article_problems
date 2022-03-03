const mostWater = (height) => {
  let l = 0;
  let r = height.length-1;
  let maxArea = 0

  while( l < r) {
    let current = (r - l) * Math.min(height[l], height[r]);

    if (current > maxArea) maxArea = current;

    (height[l] < height[r]) ? l += 1 : r -= 1;
  }

  return maxArea;
}


let height = [2,3,4,5,18,17,6];

console.log(mostWater(height));

height = [1,8,6,2,5,4,8,3,7];

console.log(mostWater(height));
