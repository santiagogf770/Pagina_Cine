function searchMovies() {
    const searchQuery = document.getElementById('search').value.toLowerCase();
    const movieTitles = document.querySelectorAll('.movie h3');
    
    movieTitles.forEach(title => {
        const movie = title.parentElement;
        const movieTitle = title.textContent.toLowerCase();
        
        if (movieTitle.includes(searchQuery)) {
            movie.style.display = 'block';
        } else {
            movie.style.display = 'none';
        }
    });
}
