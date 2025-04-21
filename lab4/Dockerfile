FROM scratch

COPY --from=go-app-builder /app/main main 

ENTRYPOINT ["./main"]