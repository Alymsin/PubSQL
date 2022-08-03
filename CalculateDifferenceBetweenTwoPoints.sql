CREATE function [dbo].[CalculateDifferenceBetweenTwoPoints] (@Lat1 float, @Long1 float, @Lat2 float, @Long2 float)
RETURNS FLOAT
AS
BEGIN
SET @Lat1 = @Lat1 / (180/(pi()))
SET @Long1 = @Long1 / (180/(pi()))
SET @Lat2 = @Lat2 / (180/(pi()))
SET @Long2 = @Long2 / (180/(pi()))
RETURN 3958.8 * acos((sin(@Lat1) * sin(@Lat2)) + cos(@Lat1) * cos(@Lat2) * cos(@Long2 - @Long1))
END
